/*
 * =====================================================================
 *      Project :  SSLoyGraphicsCourse
 *      File    :  unicode.cpp
 *      Created :  03.02.2020 18:44:16 +0300
 *      Author  :  Dmitriy Ivanov
 * =====================================================================
 */


#include <iostream>
#include <string>

#ifdef _WIN32
#include <windows.h>
#endif

void print_unicode_chars()
{
    std::cout << "Random unicode characters:\n";
    std::string str = "Pa’s väi wöl Θέλει נחמדה いろはにほ 다람쥐 ā łódź Съешь Češće žušč เป็นมนุ بىشەم  中国智造 視野無限廣";
    std::cout << str << '\n';
}
