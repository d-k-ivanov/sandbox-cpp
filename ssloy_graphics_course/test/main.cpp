/*
 * =====================================================================
 *      Project :  SSLoyGraphicsCourse
 *      File    :  main.cpp
 *      Created :  03.02.2020 18:44:16 +0300
 *      Author  :  Dmitry Ivanov
 * =====================================================================
 */

#include "main.h"

#include <cxxopts.h>
#include <formats.h>

#include <iostream>
#include <string>

#ifdef _WIN32
#include <windows.h>
#endif

using namespace ssloy;

int main(int argc, char* argv[])
{
    #ifdef _WIN32
    SetConsoleOutputCP(CP_UTF8);
    #endif

    int exit_code = 0;

    cxxopts::Options options("SSLoyGraphicsCourse", "Description");
    options
        .positional_help("[optional args]")
        .show_positional_help();

    options.add_options()
        ("h,help", "Show help")
        ("s,separate", "Show separated numbers in output");

    options.custom_help("[-h] [-v] [-s]");

    try {
        const auto result = options.parse(argc, argv);

        if (result.count("help")) {
            std::cout << options.help() << '\n';
            std::system("pause");
            exit(0);
        }

        if (result.count("separate")) {
            std::cout << "Thousands separator is enabled..." << std::endl;
            set_separator_thousands('\'');
        }
    }
    catch (const cxxopts::OptionException & e) {
        std::cout << "Error: " << e.what() << " Showing help message...\n";
        std::cout << options.help() << '\n';
        exit_code = 1;
    }

    std::cout << std::string(100, '-') << '\n'; // -----------------------------

    print_max_values();

    std::cout << std::string(100, '-') << '\n'; // -----------------------------

    print_unicode_chars();

    std::cout << std::string(100, '-') << '\n'; // -----------------------------

    return exit_code;
}
