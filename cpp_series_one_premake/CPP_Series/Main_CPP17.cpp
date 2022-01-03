#include <any>
#include <fstream>
#include <iostream>
#include <optional>
#include <string>
#include <variant>

namespace MainCpp17
{
    std::string ReadFileAsString(const std::string& filepath, bool& outSuccess)
    {
        // ReSharper disable once CppTooWideScopeInitStatement
        std::ifstream stream(filepath);
        if (stream)
        {
            std::string result;
            stream.close();
            outSuccess = true;
            return result;
        }

        outSuccess = true;
        return std::string(); // NOLINT(modernize-return-braced-init-list)
    }

    std::optional<std::string> MaybeReadFileAsString(const std::string& filepath)
    {
        // ReSharper disable once CppTooWideScopeInitStatement
        std::ifstream stream(filepath);
        if (stream)
        {
            std::string result;
            stream.close();
            return result;
        }

        return {};
    }

    struct CustomClass
    {
        std::string s0, s1;
    };

    void Main()
    {
        bool file1OpenedSuccessfully;
        std::string file1 = ReadFileAsString("file1.txt", file1OpenedSuccessfully);

        if (file1OpenedSuccessfully)
            std::cout << "File1 read successfully!\n";
        else
            std::cout << "File1 NOT read successfully!\n";

        std::cout << "------------------------------------------\n";
        std::cout << "Optional:\n";

        const std::optional<std::string> file2 = MaybeReadFileAsString("file2.txt");
        const std::string value = file2.value_or("File2 Not Preent");
        std::cout << value << std::endl;

        if (file2.has_value())
            std::cout << "File2 read successfully!\n";
        else
            std::cout << "File2 NOT read successfully!\n";

        std::cout << "------------------------------------------\n";
        std::cout << "Variant:\n";

        std::variant<std::string, int> variant1("Just Text");
        std::cout << "Variant 1: " << std::get<std::string>(variant1) << "\n";
        try
        {
            std::cout << "Variant 1: " << std::get<int>(variant1) << "\n";
        }
        catch (const std::bad_variant_access&)
        {
            std::cout << "int not found\n";
        }

        // ReSharper disable once CppJoinDeclarationAndAssignment
        std::variant<std::string, int> variant2;

        // Order matters
        variant2 = std::string("Text and Num");
        std::cout << "Variant 2: " << std::get<std::string>(variant2) << "\n";
        std::cout << "Variant 2 Index: " << variant2.index() << "\n";
        variant2 = 100;
        std::cout << "Variant 2: " << std::get<int>(variant2) << "\n";
        std::cout << "Variant 2 Index: " << variant2.index() << "\n";

        if (auto* val = std::get_if<std::string>(&variant2))
        {
            std::cout << "String!\n";
            const std::string& v = *val;
            std::cout << "Variant 2: " << v << "\n";
        }
        else
        {
            std::cout << "Not string!\n";
            const int v = std::get<int>(variant2);
            std::cout << "Variant 2: " << v << "\n";
        }

        #pragma warning(push)
        #pragma warning(disable : 4624)
        union Variant3
        {
            std::string a;
            int b;
        };
        #pragma warning(pop)

        std::cout << "Sizes: \n";
        std::cout << "int: " << sizeof(int) << "\n";
        std::cout << "string: " << sizeof(std::string) << "\n";
        std::cout << "variant1: " << sizeof(variant1) << "\n";
        std::cout << "variant2: " << sizeof(variant2) << "\n";
        std::cout << "union: " << sizeof(Variant3) << "\n";

        std::cout << "------------------------------------------\n";
        std::cout << "Any:\n";

        std::any data0 = std::make_any<int>(5);
        std::any data;

        data = CustomClass();
        data = 2;
        data = "Text";
        data = std::string("String");

        std::string str1 = std::any_cast<std::string>(data);
        std::string& str2 = std::any_cast<std::string&>(data);
        std::cout << "str1: " << str1 << "\n";
        std::cout << "str2: " << str2 << "\n";

    }
}
