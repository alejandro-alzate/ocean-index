local oceanspec = {
	package = "3DreamEngine",
	author = "3dreamengine",
	version = "latest",
	source = {
		url = "https://github.com/3dreamengine/3DreamEngine"
	},

	description = {
		summary = "A simple ffi-accelerated vector library for everyone with support for z-axis",
		detailed = [[
		brinevector3D

		A simple vector lua library for everyone for 3D!
		This is a fork of the brinevector (2D only)
		Motivation

		I personally like brinevector, because it uses ffi to make
		structs for vectors instead of using tables, which makes
		it faster and more efficient, but I also need this for
		bump3dpd which needs x,y,z.

		Compatibility
		BrineVector3D was written for LOVE2D and is accelerated by
		the ffi module in luajit, but can be used for any luajit program.
		]],
		homepage = "https://discord.gg/hpmZxNQ",
		license = "3DreamEngine is an *awesome* 3d engine for LÖVE. ",
	},

	love = ">=11.0, <12",
	lua = "unknown",
	ffi = "unknown",
	jit = "unknown",

	dependencies = {
	}

}

return oceanspec
