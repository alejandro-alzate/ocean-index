--Yes, this uses luarocks. This is somewhat ironic.
local serpent = require("serpent")
local lfs = require("lfs")

local utils = require("utils")
local loadFile = require("loader")
local isDir = utils.isDir
local writeToFile = utils.writeToFile
local computeChecksum = utils.computeChecksum

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
	-- print("index:", prettyOutput)

	local checksums = { indexPrettyChecksum, indexCompactChecksum }
	print("index checksums = " .. serpent.block(checksums, { comment = false }))
end

main()
