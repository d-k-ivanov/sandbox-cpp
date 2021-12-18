workspace "CPP_Series"
    startproject "CPP_Series"

    configurations { "Debug", "Release", "RelDebug" }
    platforms { "x64", "x86"}
    warnings "Extra"

    flags {"MultiProcessorCompile", "ShadowedVariables", "UndefinedIdentifiers"}

    targetdir "%{prj.location}/%{cfg.architecture}/%{cfg.buildcfg}"
    debugdir "%{prj.location}/%{cfg.architecture}/%{cfg.buildcfg}"
    objdir "!%{prj.location}/%{cfg.architecture}/%{cfg.buildcfg}/intermediate/%{prj.name}"

    filter "platforms:x86"
        architecture "x86"

    filter "platforms:x64"
        architecture "x86_64"

    filter({"platforms:x86","system:windows"})
        defines({"COMPILER_MSVC32","WIN32"})

    filter({"platforms:x86_64","system:windows"})
        defines({"COMPILER_MSVC64","WIN64"})

    filter "configurations:RelDebug"
        defines "NDEBUG"
        optimize "Debug"
        runtime "Release"
        symbols "On"

    filter "configurations:Release"
        defines "NDEBUG"
        flags "LinkTimeOptimization"
        optimize "Full"
        runtime "Release"
        symbols "Off"

    filter "configurations:Debug"
        defines {"DEBUG", "_DEBUG"}
        optimize "Off"
        runtime "Debug"
        symbols "On"

    filter "system:windows"
        cdialect "C17"
        cppdialect "C++20"
        debuggertype "NativeOnly"
        defaultplatform "x64"
        defines {"_CRT_NONSTDC_NO_WARNINGS", "_CRT_SECURE_NO_WARNINGS", "STRICT", "COMPILER_MSVC" }
        staticruntime "On"


    filter "system:linux"
        cdialect "gnu17"
        cppdialect "gnu++20"
        staticruntime "Off"
        defaultplatform "x64"
        linkoptions "-Wl,--no-undefined"
        defines({ "LINUX", "_LINUX", "COMPILER_GCC", "POSIX" })

    filter "files:**.cpp or **.cxx or **.cc"
        strictaliasing "Level3"

    filter({})


project "CPP_Series"
    kind "ConsoleApp"
    location "CPP_Series"
    language "C++"
    cppdialect "C++20"

    files
    {
        "CPP_Series/**.h",
        "CPP_Series/**.cpp",
    }

    filter({})
