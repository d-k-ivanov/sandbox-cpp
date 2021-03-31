#include <ctime>
#include <iostream>
#include <type_traits>
#include <utility>

namespace detail
{
    template <std::size_t Index, typename T>
    class TupleElement
    {
        T value;
    protected:
        TupleElement(const T& val) : value(val) {}

        template <std::size_t I>
        constexpr std::enable_if_t<I == Index, T&>
        get() { return value; }

        template <std::size_t I>
        constexpr std::enable_if_t<I == Index, const T&>
        get() const { return value; }

        // template <std::size_t N, typename Tuple>
        // decltype(auto) get(Tuple& tuple) { return *tuple(get_impl<N>{}); }
    };

    template <typename Ind, typename... Ts>
    class TupleImpl;

    template <std::size_t... Is, typename... Ts>
    class TupleImpl<std::index_sequence<Is...>, Ts...> : TupleElement<Is, Ts>...
    {
    public:
        constexpr TupleImpl(const Ts&... args) : TupleElement<Is, Ts>(args)... {}
        using TupleElement<Is, Ts>::get...;
        static constexpr std::size_t size() { return sizeof...(Is); }
    };
}

template <typename... Ts>
struct Tuple : detail::TupleImpl<std::index_sequence_for<Ts...>, Ts...>
{
    using detail::TupleImpl<std::index_sequence_for<Ts...>, Ts...>::TupleImpl;
};

template <typename... Ts>
Tuple(const Ts&...) -> Tuple<Ts...>;

template <typename T, typename U>
auto pointerDistance(const T* v1, const U* v2)
{
    return reinterpret_cast<std::ptrdiff_t>(v2) - reinterpret_cast<std::ptrdiff_t>(v1);
}

int main()
{
    Tuple myTuple(3.5, 2, true, true);

    std::cout << myTuple.get<0>() << ' ';
    std::cout << myTuple.get<1>() << ' ';
    std::cout << myTuple.get<2>() << ' ';
    std::cout << myTuple.get<3>() << std::endl;

    // The addresses should be in increasing order
    std::cout << &myTuple.get<0>() << ' ';
    std::cout << &myTuple.get<1>() << ' ';
    std::cout << &myTuple.get<2>() << ' ';
    std::cout << &myTuple.get<3>() << std::endl;

    std::srand((unsigned) std::time(NULL));
    Tuple myTuple2(
        std::rand() % 3,
        std::rand() % 3,
        std::rand() % 3,
        std::rand() % 3,
        std::rand() % 3,
        std::rand() % 3,
        std::rand() % 3,
        std::rand() % 3,
        std::rand() % 3,
        std::rand() % 3);

    std::cout << myTuple2.size() << std::endl;

    std::cout << myTuple2.get<0>() << " -> " << &myTuple2.get<0>() << std::endl;
    std::cout << myTuple2.get<1>() << " -> " << &myTuple2.get<1>() << std::endl;
    std::cout << myTuple2.get<2>() << " -> " << &myTuple2.get<2>() << std::endl;
    std::cout << myTuple2.get<3>() << " -> " << &myTuple2.get<3>() << std::endl;
    std::cout << myTuple2.get<4>() << " -> " << &myTuple2.get<4>() << std::endl;
    std::cout << myTuple2.get<5>() << " -> " << &myTuple2.get<5>() << std::endl;
    std::cout << myTuple2.get<6>() << " -> " << &myTuple2.get<6>() << std::endl;
    std::cout << myTuple2.get<7>() << " -> " << &myTuple2.get<7>() << std::endl;
    std::cout << myTuple2.get<8>() << " -> " << &myTuple2.get<8>() << std::endl;
    std::cout << myTuple2.get<9>() << " -> " << &myTuple2.get<9>() << std::endl;
    std::cout << std::endl;
}
