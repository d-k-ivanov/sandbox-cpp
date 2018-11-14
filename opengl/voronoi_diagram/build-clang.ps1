#!/usr/bin/env pwsh
${arch}    = (Get-CimInstance Win32_operatingsystem).OSArchitecture.split('-')[0]
${libPath} = (Join-Path $PSScriptRoot "lib${arch}")
${binPath} = (Join-Path $PSScriptRoot "bin")
${includePath} = (Join-Path $PSScriptRoot "include")

Copy-Item ${libPath}/freeglut.dll ${binPath}/

clang --std=c++17 -O3 -DNDEBUG        `
  -Xclang -flto-visibility-public-std `
  -o ${binPath}/voronoi_diagram.exe   `
  -I "${includePath}" -L"${libPath}"  `
  -lfreeglut -lopengl32 src/*.cpp
