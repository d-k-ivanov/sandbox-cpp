conan config get
conan config set general.revisions_enabled=true
conan config get

conan remote add conan-divanov https://organization.jfrog.io/artifactory/api/conan/conan-divanov
conan user -p -r conan-divanov user.name
conan remote list

conan remove hello* -f

conan create hello d-k-ivanov/testing -pr windows-msvc-16-static-release-x64
conan upload "hello*" -r conan-divanov --all --confirm

# Change hello.cpp

conan create hello d-k-ivanov/testing -pr windows-msvc-16-static-release-x64
conan upload "hello*" -r conan-divanov --all --confirm

conan search hello/0.1@d-k-ivanov/testing --revisions -r conan-divanov
