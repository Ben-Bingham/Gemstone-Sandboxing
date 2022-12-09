project "Wavellite"
	print "Initializing Wavellite"

    kind "StaticLib"
	language "C++"
	cppdialect "C++20"

	targetdir "%{wks.location}/build/bin/%{prj.name}"
	objdir "%{wks.location}/build/bin-int/%{prj.name}"

	flags "MultiProcessorCompile"

    defines {
        "WAVELLITE_DEBUG",
        "WAVELLITE_RELEASE"
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
		"../vendor/ImGui/src"
	}

	libdirs {
		"../vendor/GLFW/lib-vc2022",
		"../vendor/glew-2.1.0/bin/Release/x64"
	}

	links {
		"Lazuli",
		"Malachite",
		"ImGui",
		"glew32.dll",
		"opengl32",
		"glfw3"
	}

	print "Wavellite Initialized"
