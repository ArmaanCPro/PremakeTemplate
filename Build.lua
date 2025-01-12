-- premake5.lua
workspace "Template Workspace"
    architecture "x64"
    configurations { "Debug", "Release", "Dist" }
    startproject "App"

    flags
    {
        "MultiProcessorCompile"
    }

    filter "system:windows"
        systemversion "latest"
        defines { "PL_WINDOWS" }
        toolset "msc"
        -- Workspace-wide build options for MSVC
        buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

    filter "system:linux"
        systemversion "latest"
        defines { "PL_LINUX"}
        toolset "gcc"

    filter "system:macosx"
        systemversion "latest"
        defines { "PL_MACOSX"}
        toolset "clang"

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Core"
	include "Core/Build-Core.lua"
group ""

include "App/Build-App.lua"