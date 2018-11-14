#include <iostream>

int main(int argc, char **argv, char **envp) {

    for (int i(1); i != argc; ++i) {
        std::cout << i << "=" << argv[i] << "\n";
    }

    for (char **env = envp; *env != 0; env++) {
        char *thisEnv = *env;
        std::cout << thisEnv << "\n";
    }
}
