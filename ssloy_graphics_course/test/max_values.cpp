/*
 * =====================================================================
 *      Project :  SSLoyGraphicsCourse
 *      File    :  max_values.cpp
 *      Created :  03.02.2020 18:44:16 +0300
 *      Author  :  Dmitry Ivanov
 * =====================================================================
 */

#include <iostream>
#include <iomanip>
#include <limits>
#include <typeinfo>

template<typename T>
void ShowMinMax() {
    std::cout.precision(50);
    std::cout << typeid(T).name() << ":\n";
    std::cout << "\tsize: " << std::setw(55) << sizeof(T) << '\n';
    std::cout << "\tmin:  " << std::setw(55) << std::numeric_limits<T>::min() << '\n';
    std::cout << "\tmax:  " << std::setw(55) << std::numeric_limits<T>::max() << '\n';
    std::cout << std::endl;

}

void print_max_values()
{
    ShowMinMax<short>();
    ShowMinMax<int>();
    ShowMinMax<long>();
    ShowMinMax<float>();
    ShowMinMax<double>();
    ShowMinMax<long double>();
    ShowMinMax<unsigned short>();
    ShowMinMax<unsigned int>();
    ShowMinMax<unsigned long>();
    ShowMinMax<unsigned long long>();
}
