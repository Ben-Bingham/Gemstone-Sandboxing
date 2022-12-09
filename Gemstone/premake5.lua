project "Gemstone"
	print "Initializing Gemstone"

	kind "StaticLib"
	language "C++"
	cppdialect "C++20"

	flags "MultiProcessorCompile"

	filter "configurations:Debug"
		defines "GEMSTONE_DEBUG"
		symbols "On"
	
	filter "configurations:Release"
		defines "GEMSTONE_RELEASE"
		optimize "On"

	filter {}

	includedirs {
		"src/**.h",
		-- "../Celestite/src",
		"../Lazuli/src",
		"../Malachite/src",
		"../Wavellite/src",
		"../Ruby/src",
		-- "../Pyrite/src"
	}

	targetdir "%{wks.location}/build/bin/%{prj.name}"
	objdir "%{wks.location}/build/bin-int/%{prj.name}"

	links {
		"Lazuli",
		"Malachite",
		"Wavellite",
		"Ruby"
	}

	print "Gemstone Initialized"
