return {
  ["3DreamEngine"] = {
    latest = {
      ["manifest.lua"] = {
        author = "3dreamengine",
        dependencies = {},
        description = {
          detailed = "			Features\n\n			- Easy to use yet powerful 3D extension to LÖVE\n			- Fast forward rendering with alpha pass\n			- Metalness workflow (albedo, normal, roughness, metallic, ao, emission)\n			- HDR with bloom\n			- Refractions, specular and diffuse reflections\n			- Screen space ambient occlusion (ssao)\n			- Particle batches and sprites\n			- Particle/foliage systems\n			- Simple custom shaders\n			- Eye adaption effect\n			- Cascade directional shadow mapping\n			- Point shadow mapping\n			- Smooth shadows\n			- Distance fog\n			- Godrays\n			- Included shaders for wind animation, water, ...\n			- Supports .obj, .glb, .gltf, .dae and .vox\n			- Threaded texture loading\n			- Optional high performance file format to minimize loading times\n			- Included optimized vec2, vec3, vec4, mat2, mat3 and mat4 library\n			- Box2D extension to support basic 3D physics\n			- Dynamic clouds, sun, moon, stars and rainbows\n		",
          homepage = "https://discord.gg/hpmZxNQ",
          license = "3DreamEngine is an *awesome* 3d engine for LÖVE. ",
          summary = "3DreamEngine is an *awesome* 3d engine for LÖVE."
        },
        love = ">=11.0, <12",
        package = "3DreamEngine",
        source = {
          url = "https://github.com/3dreamengine/3DreamEngine"
        },
        version = "latest"
      }
    }
  },
  brinevector3D = {
    latest = {
      ["manifest.lua"] = {
        author = "3dreamengine",
        dependencies = {},
        description = {
          detailed = "			brinevector3D\n\n			A simple vector lua library for everyone for 3D!\n			This is a fork of the brinevector (2D only)\n			Motivation\n\n			I personally like brinevector, because it uses ffi to make\n			structs for vectors instead of using tables, which makes\n			it faster and more efficient, but I also need this for\n			bump3dpd which needs x,y,z.\n\n			Compatibility\n			BrineVector3D was written for LOVE2D and is accelerated by\n			the ffi module in luajit, but can be used for any luajit program.\n		",
          homepage = "https://discord.gg/hpmZxNQ",
          license = "3DreamEngine is an *awesome* 3d engine for LÖVE. ",
          summary = "A simple ffi-accelerated vector library for everyone with support for z-axis"
        },
        ffi = "unknown",
        jit = "unknown",
        love = ">=11.0, <12",
        lua = "unknown",
        package = "3DreamEngine",
        source = {
          url = "https://github.com/3dreamengine/3DreamEngine"
        },
        version = "latest"
      }
    }
  },
  ["bump-3dpd"] = {
    ["0.2.0"] = {
      ["manifest.lua"] = {
        author = "oniietzschan",
        dependencies = {},
        description = {
          detailed = "			bump-3dpd is a Lua three-dimensional collision-detection library for axis-aligned cubes. It is based off of kikito's bump.lua library. Its main features are:\n\n			bump-3dpd only does axis-aligned bounding-box (AABB) collisions. If you need anything more complicated than that (spheres, meshes, etc.) then you're out of luck, pal.\n			Handles tunnelling - all items are treated as \"bullets\". The fact that we only use AABBs allows doing this fast.\n			Strives to be fast while being economic in memory\n			It's centered on detection, but it also offers some (minimal & basic) collision response\n			Can also return the items that touch a point, a segment or a cubic zone.\n			bump-3dpd is gameistic instead of realistic.\n\n			The demos are LÖVE based, but this library can be used in any Lua-compatible environment.\n			",
          summary = "A 3D collision detection library for Lua."
        },
        jit = "*",
        lua = ">=5.1, <5.3",
        package = "bump-3dpd",
        source = {
          url = "https://github.com/oniietzschan/bump-3dpd/"
        },
        version = "0.2.0"
      }
    }
  },
  gfxTables = {
    latest = {
      ["manifest.lua"] = {
        author = "alejandro-alzate",
        dependencies = {},
        description = {
          detailed = "Have you ever been jealous of how pretty SQL consoles prints? Here gfxTables to help you!",
          summary = "Have you ever been jelaous of how pretty SQL prints? Here is gfxTables to help you!"
        },
        package = "gfxTables",
        source = {
          url = "https://github.com/alejandro-alzate/gfxTables.lua"
        },
        version = "latest"
      }
    }
  },
  language = {
    latest = {
      ["manifest.lua"] = {
        author = "alejandro-alzate",
        dependencies = {},
        description = {
          detailed = "A pure lua library for management of strings geared towards localization purposes.",
          summary = "A pure lua language manager geared to use on user interfaces whether is a game or a productivity tool with capability of hotswaping"
        },
        package = "ocean",
        source = {
          url = "https://github.com/alejandro-alzate/language-lua"
        },
        version = "latest"
      }
    }
  },
  love = {
    ["11.5"] = {
      ["manifest.lua"] = {
        architectures = {
          android = "https://github.com/love2d/love/releases/download/11.5/love-11.5-android.apk",
          appimg = "https://github.com/love2d/love/releases/download/11.5/love-11.5-x86_64.AppImage",
          linuxsrc = "https://github.com/love2d/love/releases/download/11.5/love-11.5-linux-src.tar.gz",
          macos = "https://github.com/love2d/love/releases/download/11.5/love-11.5-macos.zip",
          source = "https://github.com/love2d/love/archive/refs/tags/11.5.zip",
          win32 = "https://github.com/love2d/love/releases/download/11.5/love-11.5-win32.zip",
          win64 = "https://github.com/love2d/love/releases/download/11.5/love-11.5-win64.zip"
        },
        author = "love2d",
        dependencies = {},
        description = {
          detailed = "LÖVE is an *awesome* framework you can use to make 2D games in Lua. It's free, open-source, and works on Windows, macOS, Linux, Android, and iOS.",
          homepage = "love2d.org",
          license = "https://github.com/love2d/love/blob/main/license.txt",
          summary = "LÖVE is an awesome 2D game framework for Lua."
        },
        package = "love",
        source = {
          url = "https://github.com/love2d/love"
        },
        version = "11.5"
      }
    }
  },
  love2doc = {
    latest = {
      ["manifest.lua"] = {
        author = "alejandro-alzate",
        dependencies = {},
        description = {
          detailed = "			Yeah intensional typo is a word game of LÖVE2D and Documentation now getting serious,\n			Here you can find a copy of LÖVE2D wiki easy for clone. Feel free to clone it to your machine.\n			To do so, use the following command:\n\n			git clone git@github.com:alejandro-alzate/love2doc.git\n\n			Or just click that juicy green button named \"Code\" then in the underwhelming grey \"Download ZIP\" button.\n\n			Unzip if you Downloaded it via ZIP and open index.html And off to the races!\n\n			Happy coding everybody!\n			",
          homepage = "",
          summary = "yeah intensional typo is a word game of LÖVE2D and Documentation. Grab a copy and start developing offline! "
        },
        package = "love2doc",
        source = {
          url = "https://github.com/alejandro-alzate/love2doc"
        },
        version = "latest"
      }
    }
  },
  ocean = {
    ["0.1"] = {
      ["manifest.lua"] = {
        author = "KiwiSky & alejandro-alzate",
        dependencies = {},
        description = {
          detailed = "Ocean is a simple package manager for your\n		love applications and games",
          summary = "Ocean the love package manager"
        },
        package = "ocean",
        source = {
          url = "https://github.com/alejandro-alzate/ocean/"
        },
        version = "0.1"
      }
    }
  },
  srt = {
    ["1.0.0-0"] = {
      ["manifest.lua"] = {
        author = "KiwiSky & alejandro-alzate",
        dependencies = {},
        description = {
          detailed = "A pure lua library to for SubRip (SRT) file parsing",
          summary = "A crappy SRT file parser that i made on my own when i wasn't able to find a good one"
        },
        package = "srt",
        source = {
          url = "https://github.com/alejandro-alzate/srt-lua/"
        },
        version = "1.0.0-0"
      }
    }
  },
  whale = {
    ["0.1"] = {
      ["manifest.lua"] = {
        author = "KiwiSky & Alejandro Alzate",
        dependencies = {},
        description = {
          detailed = "LÖVE is an *awesome* framework you can use to make 2D games in Lua. It's free, open-source, and works on Windows, macOS, Linux, Android, and iOS.",
          homepage = "love2d.org",
          license = "https://github.com/litzKiwiSky/whale/blob/main/LICENSE.md",
          summary = "A lovely package manager for LÖVE framework"
        },
        package = "whale",
        source = {
          url = "https://github.com/itzKiwiSky/whale/"
        },
        version = "0.1"
      }
    }
  }
}