
# conan remote add <REMOTE> https://ormcornd.jfrog.io/artifactory/api/conan/conan-divanov
# conan user -p <PASSWORD> -r <REMOTE> <USERNAME>
# conan upload <RECIPE> -r <REMOTE> --all

conan remote add conan-divanov https://organization.jfrog.io/artifactory/api/conan/conan-divanov
conan user -p -r conan-divanov user.name
conan remote list

conan upload "hello*" -r conan-divanov
conan search "*" -r conan-divanov
conan search hello/0.1@d-k-ivanov/testing -r conan-divanov

conan upload "hello*" -r conan-divanov --all --confirm
conan search "*" -r conan-divanov

# Upload all
conan upload "*" -r conan-divanov --all --confirm

# Removing conan-center
# (DON'T DO) conan remote remove conan-center
# conan remote add conan-center https://conan.bintray.com
