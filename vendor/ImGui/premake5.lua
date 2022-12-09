project "ImGui"
    print "Initializing ImGui"

    kind "StaticLib"
    language "C++"
    cppdialect "C++17"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
    filter {}

	targetdir "%{wks.location}/build/vendor/bin/%{prj.name}"
	objdir "%{wks.location}/build/vendor/bin-int/%{prj.name}"

    files {
        "src/**.cpp",
        "src/**.h"
    }

    includedirs {
        "../GLFW/include"
    }

    libdirs {
        "../GLFW/lib-vc2022"
    }

    links "glfw3"

    print "ImGui Initialized"
    