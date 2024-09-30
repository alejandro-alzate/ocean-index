-- This is a demostration of a beta package manager for lua and love.

local oceanspec = {
	package = "love",
	author = "love2d",
	version = "11.5",
	source = {
		url = "https://github.com/love2d/love"
	},

	--Platform specific optional
	architectures = {
		source = "https://github.com/love2d/love/archive/refs/tags/11.5.zip",
		android = "https://github.com/love2d/love/releases/download/11.5/love-11.5-android.apk",
		linuxsrc = "https://github.com/love2d/love/releases/download/11.5/love-11.5-linux-src.tar.gz",
		macos = "https://github.com/love2d/love/releases/download/11.5/love-11.5-macos.zip",
		win64 = "https://github.com/love2d/love/releases/download/11.5/love-11.5-win64.zip",
		win32 = "https://github.com/love2d/love/releases/download/11.5/love-11.5-win32.zip",
		appimg = "https://github.com/love2d/love/releases/download/11.5/love-11.5-x86_64.AppImage",
	},
	description = {
		summary = "LÖVE is an awesome 2D game framework for Lua.",
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
