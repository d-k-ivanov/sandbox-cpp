#include <array>
#include <iostream>
#include <string>
#include <tuple>
#include <vector>

namespace MainReturnValues
{
    void Function1(std::string* outVar1, std::string* outVar2)
    {
        if (outVar1)
            *outVar1 = "Ptr_One";
        if (outVar2)
            *outVar2 = "Ptr_Two";
    }

    std::string* Function2()
    {
        return (new std::string[2]{"Str_One", "Str_Two"});
    }

    std::array<std::string, 2> Function3()
    {
        std::array<std::string, 2> results;
        results[0] = "Ar_One";
        results[1] = "Ar_Two";

        return results;
    }

    std::vector<std::string> Function4()
    {
        std::vector<std::string> results;
        results.push_back("Vev_One");
        results.push_back("Vec_Two");

        return results;
    }


    std::pair<std::string, float> Function5()
    {
        return std::make_pair("Pair", 2.2f);
    }

    std::tuple<std::string, float> Function6()
    {
        return std::make_pair("Tuple", 1.1f);
    }

    struct ReturnValues
    {
        std::string One;
        std::string Two;
    };

    ReturnValues Function7()
    {
        return {"One", "Two"};
    }

    void Main()
    {
        std::string outVar1, outVar2;
        Function1(&outVar1, &outVar2);
        Function1(nullptr, nullptr);
        std::cout << outVar1 << ", " << outVar2 << std::endl;
        std::cout << "------------------------------" << std::endl;

        const std::string* sources2 = Function2();
        std::cout << sources2[0] << ", " << sources2[1] << std::endl;

        const std::array<std::string, 2> sources3 = Function3();
        std::cout << sources3[0] << ", " << sources3[1] << std::endl;

        const std::vector<std::string> sources4 = Function4();
        std::cout << sources4[0] << ", " << sources4[1] << std::endl;
        std::cout << "------------------------------" << std::endl;

        const std::pair<std::string, float> sources5 = Function5();
        // auto sources5 = Function5();
        std::cout << std::get<0>(sources5) << ", " << std::get<1>(sources5) << std::endl;
        std::cout << sources5.first << ", " << sources5.second << std::endl;

        const std::tuple<std::string, float> sources6 = Function6();
        // auto sources6 = Function6();
        std::cout << std::get<0>(sources6) << ", " << std::get<1>(sources6) << std::endl;
        std::cout << "------------------------------" << std::endl;

        const ReturnValues sources7 = Function7();
        std::cout << sources7.One << ", " << sources7.Two << std::endl;
    }
}
