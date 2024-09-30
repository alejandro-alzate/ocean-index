local oceanspec = {
	package = "bump-3dpd",
	author = "oniietzschan",
	version = "0.2.0",
	source = {
		url = "https://github.com/oniietzschan/bump-3dpd/"
	},

	description = {
		summary = "A 3D collision detection library for Lua.",
		detailed = [[
			bump-3dpd is a Lua three-dimensional collision-detection library for axis-aligned cubes. It is based off of kikito's bump.lua library. Its main features are:

			bump-3dpd only does axis-aligned bounding-box (AABB) collisions. If you need anything more complicated than that (spheres, meshes, etc.) then you're out of luck, pal.
			Handles tunnelling - all items are treated as "bullets". The fact that we only use AABBs allows doing this fast.
			Strives to be fast while being economic in memory
			It's centered on detection, but it also offers some (minimal & basic) collision response
			Can also return the items that touch a point, a segment or a cubic zone.
			bump-3dpd is gameistic instead of realistic.

			The demos are LÖVE based, but this library can be used in any Lua-compatible environment.
			]]
	},

	lua = ">=5.1, <5.3",
	jit = "*",

	dependencies = {

	}

}

return oceanspec
