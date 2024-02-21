// cl /std:c++20 /EHsc /W4 /MD /FAs /Faout.asm /Feout.exe bit_cast_sample_01.cpp
// g++ -std=c++20 -Wall -Wextra -Wpedantic -Werror -o out bit_cast_sample_01.cpp
#include <bit>
#include <cstdint>
#include <iostream>

uint16_t readUint16LittleEndianOld(const uint8_t *const data)
{
    const uint16_t value = data[0] | data[1] << 8;
    return value;
}

uint16_t readUint16LittleEndianNew(const uint8_t *const data)
{
    const uint16_t value = *std::bit_cast<const uint16_t *>(data);
    return value;
}

int main() {
    // Data: 4660
    uint8_t data[2] = {0x34, 0x12}; // Little-endian byte array representing the value 0x1234

    uint16_t resultOld = readUint16LittleEndianOld(data);
    std::cout << "Result: " << resultOld << std::endl; // Output: 4660

    uint16_t resultNew = readUint16LittleEndianNew(data);
    std::cout << "Result: " << resultNew << std::endl; // Output: 4660

    return 0;
}