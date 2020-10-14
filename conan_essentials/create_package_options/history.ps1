conan create . d-k-ivanov/testing -o greet:language=English
conan create . d-k-ivanov/testing -o greet:language=Spanish

conan create . d-k-ivanov/testing -o greet:language=Itallian
# ERROR: greet/0.1@d-k-ivanov/testing: 'Itallian' is not a valid 'options.language' value.
# Possible values are ['English', 'Spanish']

conan inspect greet/0.1@d-k-ivanov/testing
# name: greet
# version: 0.1
# url: None
# homepage: None
# license: None
# author: None
# description: None
# topics: None
# generators: cmake
# exports: None
# exports_sources: src/*
# short_paths: False
# apply_env: True
# build_policy: None
# revision_mode: hash
# settings: ('os', 'compiler', 'build_type', 'arch')
# options:
#     language: ['English', 'Spanish']
# default_options:
#     language: English

conan inspect zlib/1.2.11@
conan get zlib/1.2.11@

conan create . d-k-ivanov/testing -s compiler=unknown
# ERROR: Invalid setting 'unknown' is not a valid 'settings.compiler' value.
# Possible values are ['Visual Studio', 'apple-clang', 'clang', 'gcc', 'intel', 'qcc', 'sun-cc']
# Read "http://docs.conan.io/en/latest/faq/troubleshooting.html#error-invalid-setting"

conan create . d-k-ivanov/testing -s compiler.version=200
# ERROR: Invalid setting '200' is not a valid 'settings.compiler.version' value.
# Possible values are ['10', '11', '12', '14', '15', '16', '8', '9']
# Read "http://docs.conan.io/en/latest/faq/troubleshooting.html#error-invalid-setting"
