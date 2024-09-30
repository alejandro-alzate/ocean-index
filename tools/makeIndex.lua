--Yes this uses luarocks. This is somewhat ironic.
local lfs = require("lfs")
local serpent = require("serpent")
local md5 = require("md5")

--- Checks if a path is a directory
--- @param path string Path to check.
--- @return boolean isdir True when is a directory false otherwise.
local function isDir(path)
	local attr = lfs.attributes(path)
	return attr and attr.mode == "directory"
end

--- Function to load a Lua file in a sandbox.
--- It gets a path containing a lua file and runs it.
--- @param path string A path for a lua file.
--- @return nil|table
local function loadFile(path)
	local chunk, err = loadfile(path)
	if not chunk then
		print("Error loading file " .. path .. ": " .. err)
		return nil
	end

	-- Create a sandboxed environment based on Lua version
	local env = {}
	local lua_version = _VERSION:match("%d+%.%d+") -- Get the Lua version, e.g., "5.1", "5.2", etc.

	if lua_version == "5.1" then
		setfenv(chunk, env)           -- Lua 5.1
	else
		setmetatable(env, { __index = _G }) -- Lua 5.2 and later
	end

	local success, result = pcall(chunk)
	if not success then
		print("Error executing file " .. path .. ": " .. result)
		return nil
	end

	if type(result) ~= "table" then
		print("Malformed manifest from " .. tostring(path) .. ":" .. tostring(result))
		return nil
	end

	--Let's spam assert
	local res, msg = pcall(
		function()
			assert(type(result.package) == "string", "type(result.package) == 'string'")
			result.package = string.lower(result.package)

			assert(type(result.author) == "string", "type(result.author) == 'string'")

			assert(type(result.version) == "string" or type(result.version) == "number",
				"type(result.package) == 'string' or type(result.version) == 'number'")
			result.version = tostring(result.version)

			assert(type(result.description) == "table", "type(result.description) == 'table'")
			assert(type(result.dependencies) == "table", "type(result.dependencies) == 'table'")
		end
	)

	if type(result) ~= "table" then
		print("Malformed field manifest from " .. tostring(path) .. ":" .. tostring(msg))
		return nil
	end

	return result
end

--- Function to crawl the folder and build the structure.
--- Calls itself to look inside of more folders.
--- @param path string Root folder path to start looking.
--- @return table index Contains the manifest of each file reported.
local function crawlFolder(path)
	local result = {}

	for file in lfs.dir(path) do
		if file ~= "." and file ~= ".." then
			local fullPath = path .. "/" .. file
			if isDir(fullPath) then
				-- Recursively crawl subdirectories
				result[file] = crawlFolder(fullPath)
			elseif file:match("%.lua$") then
				-- Load the Lua file and store its result
				local luaResult = loadFile(fullPath)
				if luaResult then
					result[file] = luaResult
				end
			end
		end
	end

	return result
end

--- Writes a file with contents to disk nothing fancy.
--- @param filename string path to file
--- @param content string contents to write to the file
--- @return nil
local function writeToFile(filename, content)
	local file = io.open(filename, "w")
	if file then
		file:write(content)
		file:close()
	else
		print("Error writing the file: " .. tostring(filename))
	end
end

--- Takes a file read in binary mode and computes an md5 checksum on it
--- @param filename string path where is located the file
--- @return string|nil checksum Returns an MD5 checksum if the file was read, nil otherwise
local function computeChecksum(filename)
	local file = io.open(filename, "rb")
	if not file then return nil end

	local content = file:read("*a")
	file:close()

	return md5.sumhexa(content)
end


--- Main function
local function main()
	local folder = arg[1] or "../.oceanmanifests"
	local indexPrettyPath = "../index-pretty.lua"
	local indexCompactPath = "../index.lua"
	local results = crawlFolder(folder)

	-- Make the index file
	local prettyOutput = "return " .. serpent.block(results, { comment = false })
	local compactOutput = "return " .. serpent.line(results, { comment = false })

	writeToFile(indexPrettyPath, prettyOutput)
	writeToFile(indexCompactPath, compactOutput)

	-- Compute checksums
	local indexPrettyChecksum = computeChecksum(indexPrettyPath)
	local indexCompactChecksum = computeChecksum(indexCompactPath)

	-- Write those checksums
	writeToFile(indexPrettyPath .. ".md5", tostring(indexPrettyChecksum))
	writeToFile(indexCompactPath .. ".md5", tostring(indexCompactChecksum))

	-- Print the result as a table
	print("index:", prettyOutput)

	local checksums = { indexPrettyChecksum, indexCompactChecksum }
	print("index checksums:", serpent.block(checksums, { comment = false }))
end

main()
