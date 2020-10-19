conan install cmake/3.16.3@ -g deploy

cmake\bin\cmake.exe --version
# cmake version 3.16.3

Remove-Item -Recurse -Force cmake
Remove-Item conanbuildinfo.txt
Remove-Item deploy_manifest.txt

conan install cmake/3.16.3@ -g virtualenv

.\run_apps\activate.ps1

cmake --version
# cmake version 3.16.3

.\run_apps\dactivate.ps1

cmake --version
# cmake version 3.18.4

Remove-Item activate*
Remove-Item deactivate*
Remove-Item environment*
Remove-Item conanbuildinfo.txt
