local oceanspec = {
	package = "cpml",
	author = "excessive",
	version = "v1.0.0",
	source = {
		url = "https://github.com/excessive/cpml"
	},

	description = {
		summary = "Cirno's Perfect Math Library: Just about everything you need for 2D/3D games. Hopefully.",
		detailed = [[
			Various useful bits of game math. 3D line intersections, ray casting, 2d/3d vectors, 4x4 matrices, quaternions, etc.
			Intended to be used with LuaJIT and LÖVE (this is the backbone of LÖVE3D).
			Online documentation can be found here or you can generate them yourself using ldoc -c doc/config.ld -o index.
		]],
		homepage = "https://excessive.github.io/cpml/",
	},
}

return oceanspec
