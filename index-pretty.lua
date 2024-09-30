return {
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
        dependency = {},
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
  ocean = {
    ["0.1"] = {
      ["manifest.lua"] = {
        author = "KiwiSky & alejandro-alzate",
        description = {
          detailed = "Ocean is a simple package manager for your\n		love applications and games",
          summary = "Ocean the love package manager"
        },
        package = "ocean",
        source = {
          url = "https://github.com/alejandro-alzate/ocean/"
        },
        version = "1.0"
      }
    }
  },
  whale = {
    ["0.1"] = {}
  }
}