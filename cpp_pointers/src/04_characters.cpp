#include <iostream>

int main()
{
    char initial = 'P';
    char* pInitial = &initial;
    // std::cout << "Memory address for initial P: " << (void *) pInitial << std::endl;
    std::cout << "Memory address for initial P: " << static_cast<void *> (pInitial) << std::endl;

    std::cout << std::endl;

    const char* pans1{ "Absolutely yes" };
    const char* pans2{ "Absolutely no" };
    const char* pans3{ "The oracle is out, please try again later" };
    const char* pans4{ "Outlook is good" };
    const char* pans5{ "Today is your lucky day, yes" };
    const char* pans6{ "Try again tomorrow" };
    const char* pans7{ "Most certainly" };
    const char* pans8{ "The answer is unclear" };
    const char* pans{ "The oracle says... " };
    int choice{};

    std::cout << "Think of a yes/no question, then ask the oracle" << std::endl;
    std::cout << "Enter a number between 1 and 8: ";
    std::cin >> choice;
    switch (choice)
    {
    case 1:
        std::cout << pans << pans1 << std::endl;
        break;
    case 2:
        std::cout << pans << pans2 << std::endl;
        break;
    case 3:
        std::cout << pans << pans3 << std::endl;
        break;
    case 4:
        std::cout << pans << pans4 << std::endl;
        break;
    case 5:
        std::cout << pans << pans5 << std::endl;
        break;
    case 6:
        std::cout << pans << pans6 << std::endl;
        break;
    case 7:
        std::cout << pans << pans7 << std::endl;
        break;
    case 8:
        std::cout << pans << pans8 << std::endl;
        break;
    default:
        std::cout << "Sorry, you didn't choose a number between 1 and 8." << std::endl;
    }
    return 0;
}
