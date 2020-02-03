/*
 * =====================================================================
 *      Project :  SSLoyGraphicsCourse
 *      File    :  main.cpp
 *      Created :  03.02.2020 18:44:16 +0300
 *      Author  :  Dmitriy Ivanov
 * =====================================================================
 */

#include "main.h"

#include <cxxopts.h>
#include <formats.h>
#include <logger.h>

#include <functional>
#include <iostream>

#ifdef _WIN32
#include <windows.h>
#endif

using namespace ssloy;

std::map<std::string, std::function<void()>> init(int argc, char* argv[])
{
    // std::map<std::string, std::function<void()>> problems =
    // {
    //     { "problem1", problem1},
    //     { "problem2", problem2},
    //     { "problem3", problem3}
    // };

    cxxopts::Options options("SSLoyGraphicsCourse", "Description");
    options
        .positional_help("[optional args]")
        .show_positional_help();

    options.add_options()
        ("h,help", "Show help")
        ("d,debug", "Show debug output")
        ("v,verbose", "Show verbose output")
        ("s,separate", "Show separated numbers in output")
        // ("p,problem", "Problem number", cxxopts::value<int>(), "N");
        ;

    options.custom_help("[-h] [-v] [-s]");

    try {
        options.parse_positional({ "help", "verbose", "debug", "separate" });
        const auto result = options.parse(argc, argv);

        if (result.count("help")) {
            std::cout << options.help() << '\n';
            std::system("pause");
            exit(1);
        }

        if (result.count("verbose")) {
            logger::log_level = logger::VERBOSE;
        }
        else if (result.count("debug"))
        {
            logger::log_level = logger::DEBUG;
        }

        if (result.count("separate")) {
            LOG_V(ssloy::logger::log_level) << "Thousands separator is enabled..." << std::endl;
            set_separator_thousands('\'');
        }

        // if (result.count("problem"))
        // {
        //     const auto problem_number = result["problem"].as<int>();
        //     if (problem_number > 3)
        //     {
        //         std::cout << "There are only three problems. Exiting...\n";
        //         exit(2);
        //     }
        //     LOG_V(logger::log_level) << std::string(100, '-') << '\n';
        //     problems["problem" + std::to_string(problem_number)]();
        //     LOG_V(logger::log_level) << std::string(100, '-') << '\n';

        //     exit(0);
        // }
    }
    catch (const cxxopts::OptionException & e) {
        std::cout << "Error: " << e.what() << " Showing help message...\n";
        std::cout << options.help() << '\n';
        exit(99);
    }

    // return problems;
}


int main(int argc, char* argv[])
 {
    #ifdef _WIN32
    SetConsoleOutputCP(CP_UTF8);
    #endif

    // std::map<std::string, std::function<void()>> problems = init(argc, argv);

    // for (std::pair<std::string, std::function<void()>> func: problems)
    // {
    //     LOG_V(logger::log_level) << std::string(100, '-') << '\n';
    //     func.second();
    // }
    // LOG_V(logger::log_level) << std::string(100, '-') << '\n';

    // std::system("pause");
    return 0;
 }
