#ifndef __UTest_H_
#define __UTest_H_

#include <cstdio>

#define __UTest_VERSION "0.0.1-alfa"

constexpr const char * __ut_pass_str = "pass";
constexpr const char * __ut_fail_str = "fail";

class UTest
{
    const char * _test_string = nullptr;

    // Options
    bool _summary_flag = false;

    // Accumulators
    unsigned long int _pass_count = 0;
    unsigned long int _fail_count = 0;

    // Disabled constructors
    UTest(){}
    UTest(UTest &);
    UTest operator= (UTest &);
public:
    UTest(const char * test_string);
    void init ( const char * test_string);
    bool summary();
    bool summary(bool flag);
    unsigned long int pass_count() const;
    unsigned long int fail_count() const;
    void test(const char * description, const int flag);
    void report() const;
    static const char * version();
};

#endif /* defined(__UTest_H_) */
