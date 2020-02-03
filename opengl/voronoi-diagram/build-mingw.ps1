#!/usr/bin/env pwsh
${arch}    = (Get-CimInstance Win32_operatingsystem).OSArchitecture.split('-')[0]
${libPath} = (Join-Path $PSScriptRoot "lib${arch}")
${binPath} = (Join-Path $PSScriptRoot "bin")
${includePath} = (Join-Path $PSScriptRoot "include")

Copy-Item ${libPath}/freeglut.dll ${binPath}/

# g++ --std=c++17 -O3 -DNDEBUG -o ${binPath}/voronoi_diagram.exe src/*.cpp -I "${includePath}" -L"${libPath}" -lfreeglut -lopengl32 -mwindows
g++ --std=c++17 -O3 -DNDEBUG -o ${binPath}/voronoi_diagram.exe src/*.cpp -I "${includePath}" -L"${libPath}" -lfreeglut -lopengl32
