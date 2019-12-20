#ifndef LOGGER_H
#define LOGGER_H

/*
 * =====================================================================
 *      Project :  project-euler
 *      File    :  logger.h
 *      Created :  20.12.2019 1:56:54 +0100
 *      Author  :  Dmitriy Ivanov
 * =====================================================================
 */

#include <ostream>

namespace euler::logger
{
    enum LogLevel
    {
        NORMAL = 0,
        VERBOSE = 1
    };

    class NoStreamBuf final : public std::streambuf {};

    inline LogLevel log_level = euler::logger::NORMAL;
    inline NoStreamBuf no_stream_buf;
    inline std::ostream no_out(&no_stream_buf);

    #define LOG(x) ((x == euler::logger::VERBOSE)? std::cout : euler::logger::no_out)
}

#endif //LOGGER_H
