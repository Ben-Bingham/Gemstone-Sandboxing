project "Ruby"
	print "Initializing Ruby"

    kind "StaticLib"
	language "C++"
	cppdialect "C++20"

	targetdir "%{wks.location}/build/bin/%{prj.name}"
	objdir "%{wks.location}/build/bin-int/%{prj.name}"

	flags "MultiProcessorCompile"

    defines {
        "RUBY_DEBUG",
        "RUBY_RELEASE",
		"RUBY_ASSETS=\"..\\\\Ruby\\\\assets\"" -- Quad slashes needed because premake and the compiler both remove a set
    }

	files {
		"src/**.h",
		"src/**.cpp"
	}

	includedirs {
		"src",
		"../vendor/GLFW/include",
		"../vendor/glew-2.1.0/include",
		"../Malachite/src",
		"../Lazuli/src",
		"../Wavellite/src",
		"../vendor/ImGui/src",
		"../vendor/stb_image"
	}

	libdirs {
		"../vendor/GLFW/lib-vc2022",
		"../vendor/glew-2.1.0/bin/Release/x64"
	}

	links {
		"Lazuli",
		"Malachite",
		"Wavellite",
		"ImGui",
		"glew32.dll",
		"opengl32",
		"glfw3"
	}

	print "Ruby Initialized"
