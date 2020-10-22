
conan remove hello* -f
conan create hello hello/0.1@d-k-ivanov/testing -pr windows-msvc-16-static-release-x64
conan lock create chat/conanfile.py --user=d-k-ivanov --channel=testing -pr windows-msvc-16-static-release-x64 #--lockfile-out=conan.lock

# Change hello.cpp
conan create hello hello/0.2@d-k-ivanov/testing -pr windows-msvc-16-static-release-x64

conan create chat d-k-ivanov/testing -pr windows-msvc-16-static-release-x64
conan create chat d-k-ivanov/testing --lockfile conan.lock
