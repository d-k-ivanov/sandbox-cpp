#pragma once

#include <bit>
#include <cstddef>


struct Arena
{
    std::byte* ptr = nullptr;
    std::size_t size_remain = 0;

    [[nodiscard]] void* Alloc(std::size_t size) noexcept;
    [[nodiscard]] void* AlignedAlloc(std::size_t alignment, std::size_t size) noexcept;
    [[nodiscard]] void* AlignedAllocStd(std::size_t alignment, std::size_t size) noexcept;

private:
    std::byte* AlignForward(std::byte* alignPtr, std::size_t alignment) const noexcept;
};
