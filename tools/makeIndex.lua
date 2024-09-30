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

-- Main function
local function main()
	local folder = arg[1] or "../.oceanmanifests"
	local results = crawlFolder(folder)

	-- Print the result as a table
	print(serpent.block(results, { comment = false }))
end

main()
