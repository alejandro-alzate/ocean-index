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
		-- How do i make my IDE stop whining about it?
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
			-- Dropped lowercase enforcement
			--result.package = string.lower(result.package)

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

return loadFile
