dev

$cwd = Get-Location
Set-Location ${PSScriptRoot}

$cmd  = "cl /std:c11 /LD /EHsc "
$cmd += "/I$(python -c 'import sys; print(sys.base_prefix)')/Include "
$cmd += "fast_trigonometry_1.cpp "
$cmd += "/link /LIBPATH:$(python -c 'import sys; print(sys.base_prefix)')/libs "
# $cmd += "/out:${PSScriptRoot}\fast_trigonometry_1.dll"
# Write-Output $cmd
Invoke-Expression $cmd

cmd /c 'build.bat'

cd ${cwd}
