local oceanspec = {
	package = "Menori",
	author = "rozenmad",
	version = "latest",
	source = {
		url = "https://github.com/rozenmad/Menori"
	},

	description = {
		summary = "Library for 3D rendering with LÖVE. ",
		detailed = [[
			Menori
			LÖVE library for 3D rendering based on scene graph. Support glTF 2.0 (implemented: meshes, materials, textures, skins, skeletons, animations). Assets may be provided either in JSON (.gltf) or binary (.glb) format.
			Works on LÖVE 11.4 and higher.
		]],
		homepage = "",
	},

	love = ">= 11.4"

}

return oceanspec
