project "Malachite"
	print "Initializing Malachite"

    kind "StaticLib"
	language "C++"
	cppdialect "C++20"

	targetdir "%{wks.location}/build/bin/%{prj.name}"
	objdir "%{wks.location}/build/bin-int/%{prj.name}"

	flags "MultiProcessorCompile"

    defines { 
        "MALACHITE_DEBUG",
        "MALACHITE_RELEASE"
    }

	files {
		"src/**.h",
		"src/**.cpp"
	}

	includedirs {
		"src",
		"../Lazuli/src"
	}

	links "Lazuli"

	print "Malachite Initialized"
