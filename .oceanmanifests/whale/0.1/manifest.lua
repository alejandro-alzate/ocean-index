-- This is a demostration of a beta package manager for lua and love.

local oceanspec = {
	package = "whale",
	author = "KiwiSky & Alejandro Alzate",
	version = "0.1",
	source = {
		url = "https://github.com/itzKiwiSky/whale/"
	},

	description = {
		summary = "A lovely package manager for LÖVE framework",
		detailed =
		"LÖVE is an *awesome* framework you can use to make 2D games in Lua. It's free, open-source, and works on Windows, macOS, Linux, Android, and iOS.",
		homepage = "love2d.org",
		license = "https://github.com/love2d/love/blob/main/license.txt",
	},

	--It's love.
	--lua = ">= 5.1, < 5.4",

	--It's love.
	--love = ">=11.0 < 12",

	dependency = {
		-- None, self contained. :)
	}

}

return oceanspec
