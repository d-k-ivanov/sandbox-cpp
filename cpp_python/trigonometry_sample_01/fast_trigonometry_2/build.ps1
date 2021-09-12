dev

$cwd = Get-Location
Set-Location ${PSScriptRoot}

$cmd  = "cl /std:c11 /LD /EHsc "
$cmd += "$((python -m pybind11 --includes).replace('-I','/I')) "
$cmd += "fast_trigonometry_2.cpp "
$cmd += "/link /LIBPATH:$(python -c 'import sys; print(sys.base_prefix)')/libs "
Invoke-Expression $cmd

cmd /c 'build.bat'

Set-Location ${cwd}
