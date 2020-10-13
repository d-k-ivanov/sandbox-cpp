conan new hello/0.1 -t -s
conan create . d-k-ivanov/testing -pr windows-msvc-16-static-release-x64
conan create . d-k-ivanov/testing -pr windows-msvc-16-static-debug-x64


conan create . d-k-ivanov/testing
conan create . d-k-ivanov/testing -o hello:shared=True
conan create . d-k-ivanov/testing -o hello:shared=True -s build_type=Debug
