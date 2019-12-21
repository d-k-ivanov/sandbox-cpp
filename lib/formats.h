#ifndef FORMATS_H
#define FORMATS_H
/*
 * =====================================================================
 *      Project :  formats.h
 *      File    :  formats.h
 *      Created :  20.12.2019 18:16:40 +0100
 *      Author  :  Dmitriy Ivanov
 * =====================================================================
 */

#include <iostream>
#include <iomanip>
#include <sstream>

namespace euler
{
    inline char separator;

    inline void set_separator_thousands(const char sep)
    {
        euler::separator = sep;
        struct separate_thousands : std::numpunct<char> {
            char_type do_thousands_sep() const override { return separator; }
            string_type do_grouping() const override { return "\3"; }
        };
        auto thousands = std::make_unique<separate_thousands>();
        std::cout.imbue(std::locale(std::cout.getloc(), thousands.release()));

    }

    inline void reset_separator()
    {
        std::cout.imbue(std::locale("C"));
    }
}

#endif //FORMATS_H
