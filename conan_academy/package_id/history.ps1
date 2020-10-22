conan remove "hello*" -f
conan remove "chat*" -f
conan remove "app*" -f

conan create hello hello/1.0@d-k-ivanov/testing -pr windows-msvc-16-static-release-x64
conan create chat d-k-ivanov/testing -pr windows-msvc-16-static-release-x64
conan create app d-k-ivanov/testing -pr windows-msvc-16-static-release-x64

# Change hello.h

conan create hello hello/1.1@d-k-ivanov/testing -pr windows-msvc-16-static-release-x64
conan create app d-k-ivanov/testing -pr windows-msvc-16-static-release-x64

conan config set general.default_package_id_mode=full_version_mode

conan create app d-k-ivanov/testing -pr windows-msvc-16-static-release-x64

conan create app d-k-ivanov/testing -pr windows-msvc-16-static-release-x64 --build=missing
conan search chat/1.0@d-k-ivanov/testing
