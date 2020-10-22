conan config install myconfig

conan new Hello-Pkg/0.1 -s
conan export . d-k-ivanov/testing
# ERROR: [HOOK - check_name.py] pre_export(): Reference Hello-Pkg/0.1@d-k-ivanov/testing should be all lowercase

conan new hello-pkg/0.1 -s
conan export . d-k-ivanov/testing

conan remove hello-pkg* -f

# Use '_' instead of '-'
conan config install myconfig
conan export . d-k-ivanov/testing

rmrf src
rm conanfile.py
