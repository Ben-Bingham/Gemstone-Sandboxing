workspace "Gemstone Sandboxing"
	print "Initializing Sandbox Workspace"

	configurations { "Debug", "Release" }
	platforms { "x64" }

	filter "platforms:x64"
		architecture "x64"

	filter "configurations:Debug"
		symbols "On"

	filter "configurations:Release"
		optimize "On"

	filter ""

	include "Dependencies/Gemstone"
	include "Sandbox"

	print "Sandbox Workspace Initialized"
