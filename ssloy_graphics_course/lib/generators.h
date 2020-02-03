#ifndef GENERATORS_H
#define GENERATORS_H

/*
 * =====================================================================
 *      Project :  SSLoyGraphicsCourse
 *      File    :  generators.h
 *      Created :  03.02.2020 18:44:16 +0300
 *      Author  :  Dmitriy Ivanov
 * =====================================================================
 */

#include <random>

namespace ssloy
{
    template<typename T>
    inline void init_rand_array(T arr[], const unsigned size, T max = 1000ULL) {
        std::random_device rand_device;
        std::mt19937 generator(rand_device());
        const std::uniform_int_distribution<> distribution(1, max);

        for (auto i = 0; i < size; ++i)
            arr[i] = distribution(generator);
    }

    template<typename T>
    inline std::vector<T> get_rand_vector(const unsigned size, T max = 1000ULL) {
        std::random_device rand_device;
        std::mt19937 generator(rand_device());
        const std::uniform_int_distribution<> distribution(1, max);
        std::vector<T> v;

        for (auto i = 0; i < size; ++i)
            v.push_back(distribution(generator));

        return v;
    }

    template<typename T>
    inline T get_rand_n(T min, T max) {
        std::random_device rand_device;
        std::mt19937 generator(rand_device());
        const std::uniform_int_distribution<T> distribution(min, max);

        return distribution(generator);
    }
}
#endif //GENERATORS_H

