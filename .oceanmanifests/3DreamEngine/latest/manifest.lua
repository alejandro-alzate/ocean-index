local oceanspec = {
	package = "3DreamEngine",
	author = "3dreamengine",
	version = "main",
	source = {
		url = "https://github.com/3dreamengine/3DreamEngine"
	},

	description = {
		summary = "3DreamEngine is an *awesome* 3d engine for LÖVE.",
		detailed = [[
			Features

		    - Easy to use yet powerful 3D extension to LÖVE
			- Fast forward rendering with alpha pass
			- Metalness workflow (albedo, normal, roughness, metallic, ao, emission)
			- HDR with bloom
			- Refractions, specular and diffuse reflections
			- Screen space ambient occlusion (ssao)
			- Particle batches and sprites
			- Particle/foliage systems
			- Simple custom shaders
			- Eye adaption effect
			- Cascade directional shadow mapping
			- Point shadow mapping
			- Smooth shadows
			- Distance fog
			- Godrays
			- Included shaders for wind animation, water, ...
			- Supports .obj, .glb, .gltf, .dae and .vox
			- Threaded texture loading
			- Optional high performance file format to minimize loading times
			- Included optimized vec2, vec3, vec4, mat2, mat3 and mat4 library
			- Box2D extension to support basic 3D physics
			- Dynamic clouds, sun, moon, stars and rainbows
		]],
		homepage = "https://discord.gg/hpmZxNQ",
		license = "3DreamEngine is an *awesome* 3d engine for LÖVE. ",
	},
	love = ">=11.0, <12",

	dependencies = {
	}

}

return oceanspec
