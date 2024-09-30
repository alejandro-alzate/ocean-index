local md5 = require("md5")
local lfs = require("lfs")
local utils = {}

--- Checks if a path is a directory
--- @param path string Path to check.
--- @return boolean isdir True when is a directory false otherwise.
function utils.isDir(path)
	local attr = lfs.attributes(path)
	return attr and attr.mode == "directory"
end

--- Writes a file with contents to disk nothing fancy.
--- @param filename string path to file
--- @param content string contents to write to the file
--- @return nil
function utils.writeToFile(filename, content)
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
function utils.computeChecksum(filename)
	local file = io.open(filename, "rb")
	if not file then return nil end

	local content = file:read("*a")
	file:close()

	return md5.sumhexa(content)
end

return utils
