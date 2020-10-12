conan new hello/0.1
conan create . d-k-ivanov/testing
conan search
conan search hello/0.1@d-k-ivanov/testing

conan create . d-k-ivanov/testing -s build_type="Debug"
conan search hello/0.1@d-k-ivanov/testing

