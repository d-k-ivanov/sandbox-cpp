#include "UTest.h"

UTest::UTest(const char * test_string)
{
    init(test_string);
}

void UTest::init(const char * test_string)
{
    _test_string = test_string;
    _pass_count = _fail_count = 0;
}

bool UTest::summary()
{
    return _summary_flag;
}

bool UTest::summary(bool flag)
{
    return _summary_flag = flag;
}

unsigned long int UTest::pass_count() const
{
    return _pass_count;
}

unsigned long int UTest::fail_count() const
{
    return _fail_count;
}

void UTest::test(const char * description, const int flag)
{
    const char * pf = nullptr;
    if (flag)
    {
        pf = __ut_pass_str;
        ++_pass_count;
    }
    else
    {
        pf = __ut_fail_str;
        ++_fail_count;
    }

    if (!_summary_flag)
        printf("%s: %s -> %s\n", _test_string, description, pf);
}

void UTest::report() const
{
    printf("%s: pass: %ld, fail: %ld\n", _test_string, pass_count(), fail_count());
    fflush(stdout);
}

const char * UTest::version()
{
    return __UTest_VERSION;
}
