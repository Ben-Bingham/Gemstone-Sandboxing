project "Sandbox"
	print "Initializing Sandbox"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"

	targetdir "%{wks.location}/build/bin/%{prj.name}"
	objdir "%{wks.location}/build/bin-int/%{prj.name}"

	files {
		-- Code
		"src/**.h",
		"src/**.cpp",
		-- Assets
		"assets/**.png",
		"assets/**.jpg"
	}

	includedirs {
		"src",
		"%{wks.location}/Gemstone/src"
	}

	--include "../Dependencies/Gemstone"

	print "Sandbox Initialized"