project "ImGuizmo"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
    {
    	"ImGuizmo.h",
    	"ImGuizmo.cpp",
    	"ImCurveEdit.h",
    	"ImCurveEdit.cpp",
    	"ImGradient.h",
    	"ImGradient.cpp",
    	"ImSequencer.h",
    	"ImSequencer.cpp",
	}
	
	includedirs {
		"%{IncludeDir.imgui}"
	}

    
	filter "system:windows"
    	systemversion "latest"

	filter "configurations:Debug"
    	runtime "Debug"
    	symbols "on"

	filter "configurations:Release"
    	runtime "Release"
    	symbols "on"
    	optimize "on"
    filter "configurations:Dist"
        runtime "Release"
        symbols "off"
        optimize "full"
