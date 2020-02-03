#ifndef LOGGER_H
#define LOGGER_H

/*
 * =====================================================================
 *      Project :  SSLoyGraphicsCourse
 *      File    :  logger.h
 *      Created :  03.02.2020 18:44:16 +0300
 *      Author  :  Dmitriy Ivanov
 * =====================================================================
 */

#include <ostream>

namespace ssloy::logger
{
    enum LogLevel
    {
        NORMAL  = 0,
        VERBOSE = 1,
        DEBUG   = 2

    };

    class NoStreamBuf final : public std::streambuf {};

    inline LogLevel log_level = ssloy::logger::NORMAL;
    inline NoStreamBuf no_stream_buf;
    inline std::ostream no_out(&no_stream_buf);

    #define LOG_V(x) (((x) >= ssloy::logger::VERBOSE) ? std::cout                 : ssloy::logger::no_out)
    #define LOG_D(x) (((x) >= ssloy::logger::DEBUG)   ? std::cout << "\tDEBUG: "  : ssloy::logger::no_out)
}

#endif //LOGGER_H
