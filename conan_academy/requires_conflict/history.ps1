conan create lib_a d-k-ivanov/testing -pr windows-msvc-16-static-release-x64
conan create lib_b d-k-ivanov/testing -pr windows-msvc-16-static-release-x64
conan install . -pr windows-msvc-16-static-release-x64

# ERROR: Conflict in lib_b/0.1@d-k-ivanov/testing:
#     'lib_b/0.1@d-k-ivanov/testing' requires 'zlib/1.2.8' while 'lib_a/0.1@d-k-ivanov/testing' requires 'zlib/1.2.11'.
#     To fix this conflict you need to override the package 'zlib' in your root package.

