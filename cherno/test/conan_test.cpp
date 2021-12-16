/*
 * =====================================================================
 *      Project :  cherno-cpp-series
 *      File    :  conan_test.cpp
 *      Created :  15.12.2021
 *      Author  :  Dmitry Ivanov
 * =====================================================================
 */

#include <iostream>

#include <catch2/catch.hpp>
#include <spdlog/spdlog.h>
#include <spdlog/sinks/basic_file_sink.h>


TEST_CASE("Conan Packages should work.")
{
    std::string s = fmt::format("The answer is {}.", 42);
    std::cout << s << std::endl;

    std::shared_ptr<spdlog::logger> logger;
    logger = spdlog::basic_logger_mt("logger", "cherno-cpp-series-tests.log");

    logger->set_level(spdlog::level::info);
    logger->info("Welcome to spdlog!");
    logger->error("Some error message with arg: {}", 1);

    logger->warn("Easy padding in numbers like {:08d}", 12);
    logger->critical("Support for int: {0:d};  hex: {0:x};  oct: {0:o}; bin: {0:b}", 42);
    logger->info("Support for floats {:03.2f}", 1.23456);
    logger->info("Positional args are {1} {0}..", "too", "supported");
    logger->info("{:<30}", "left aligned");

    logger->set_level(spdlog::level::debug); // Set global log level to debug
    logger->debug("This message should be displayed..");

    // change log pattern
    logger->set_pattern("[%H:%M:%S %z] [%n] [%^---%L---%$] [thread %t] %v");

    // Compile time log levels
    // define SPDLOG_ACTIVE_LEVEL to desired level
    SPDLOG_TRACE("Some trace message with param {}", 42);
    SPDLOG_DEBUG("Some debug message");
    spdlog::drop_all();
}
