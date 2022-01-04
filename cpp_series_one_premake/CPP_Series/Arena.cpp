// bump allocator, region-based allocator or std::pmr::monotonic_buffer_resource.

#include "Arena.h"


#include <cstdio>
#include <memory>
#include <xutility>

void* Arena::Alloc(const std::size_t size) noexcept
{
    if (size_remain < size)
        return nullptr;

    auto* allocPtr = ptr;
    ptr += size;
    size_remain -= size;

    return allocPtr;
}

void* Arena::AlignedAlloc(const std::size_t alignment, const std::size_t size) noexcept
{
    std::byte* alignedPtr = AlignForward(ptr, alignment);

    const size_t sizeForAlignment = alignedPtr - ptr;
    const size_t bumpSize = sizeForAlignment + size;

    if (size_remain < bumpSize)
        return nullptr;

    ptr = alignedPtr + size;
    size_remain -= bumpSize;

    return alignedPtr;
}

void* Arena::AlignedAllocStd(const std::size_t alignment, const std::size_t size) noexcept
{
    // void* localPtr = (void*&)ptr;
    void* localPtr = ptr;
    void* res = std::align(alignment, size, localPtr, size_remain);
    if (res)
    {
        ptr = static_cast<std::byte*>(res) + size;
        size_remain -= size;
        return res;
    }
    return nullptr;
}

std::byte* Arena::AlignForward(std::byte* alignPtr, const std::size_t alignment) const noexcept
{
    const auto addr = std::bit_cast<uintptr_t>(alignPtr);
    const auto alignedAddr = (addr + (alignment - 1)) & -alignment;
    return alignPtr + (alignedAddr - addr);
}

namespace MainArena
{
    void Main()
    {
        {
            std::byte buffer[1000]{};
            Arena arena{.ptr = buffer, .size_remain = std::size(buffer)};

            auto* ptr1 = static_cast<std::uint8_t*>(
                arena.Alloc(sizeof(std::uint8_t)));
            ptr1 = new(ptr1) std::uint8_t{42};

            auto* ptr2 = static_cast<std::uint32_t*>(
                arena.Alloc(sizeof(std::uint32_t)));
            ptr2 = new(ptr2) std::uint32_t{1729};

            printf("%i, %i\n", *ptr1, *ptr2);
        }

        {
            std::byte buffer[1000]{};
            Arena arena{.ptr = buffer, .size_remain = std::size(buffer)};

            auto* ptr1 = static_cast<std::uint8_t*>(
                arena.AlignedAlloc(alignof(std::uint8_t), sizeof(std::uint8_t)));
            ptr1 = new(ptr1) std::uint8_t{42};

            auto* ptr2 = static_cast<std::uint32_t*>(
                arena.AlignedAlloc(alignof(std::uint32_t), sizeof(std::uint32_t)));
            ptr2 = new(ptr2) std::uint32_t{1729};
            printf("%i, %i\n", *ptr1, *ptr2);
        }

        {
            std::byte buffer[1000]{};
            // Arena arena{ .ptrVoid = buffer, .size_remain = std::size(buffer) };
            Arena arena{ .ptr = buffer, .size_remain = std::size(buffer) };

            auto* ptr1 = static_cast<std::uint8_t*>(
                arena.AlignedAllocStd(alignof(std::uint8_t), sizeof(std::uint8_t)));
            ptr1 = new(ptr1) std::uint8_t{ 42 };

            auto* ptr2 = static_cast<std::uint32_t*>(
                arena.AlignedAllocStd(alignof(std::uint32_t), sizeof(std::uint32_t)));
            ptr2 = new(ptr2) std::uint32_t{ 1729 };
            printf("%i, %i\n", *ptr1, *ptr2);
        }
    }
}
