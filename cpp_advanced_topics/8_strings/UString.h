#ifndef __UString_H_
#define __UString_H_

#ifdef _MSC_VER
#ifndef _CRT_SECURE_NO_WARNINGS
#  define _CRT_SECURE_NO_WARNINGS
#endif
// #pragma warning(disable : 4068)
#include <cstdarg>
int vasprintf(char ** ret, const char * format, va_list ap);
#endif // _MSC_VER

#include <cstdlib>
#include <cstring>
#include <cstdarg>
#include <cctype>
#include <memory>

constexpr const char * _UString_version = "1.0.1";
constexpr size_t _UString_max_len = 65535;
constexpr size_t _UString_max_split = 1023;

class UString
{
    char * _str = nullptr;
    size_t _str_len = 0;

    // unique ptr to array of shared pointer UString objects
    typedef std::shared_ptr<UString> _us_ptr;
    typedef std::unique_ptr<_us_ptr[]> _split_ptr;
    mutable _split_ptr _split_array;
    mutable size_t _split_count = 0;

    // private methods
    void _reset_split_array() const;
    void _append_split_array(const UString & s) const;

public:
    typedef _split_ptr split_ptr;

    // constructors
    UString();                                  // default constructor
    UString(const char * s);                    // c-string
    UString(const UString &);                   // copy constructor
    UString(UString &&) noexcept;               // move constructor
    ~UString();

    // data management
    const char * alloc_str(size_t sz);          // smart alloc string
    void reset();                               // reset data
    void swap(UString & b);                     // member function swap
    const char * c_str() const;                 // getter
    const char * copy_str(const char *);        // alloc & copy

    // operators
    UString & operator=   (UString);            // copy-and-swap assignment
    UString & operator+=  (const char *);       // concatenation operator
    UString & operator+=  (const UString &);    // concatenation operator
    const char operator[] (const int) const;    // subscript operator

    // comparison operators
    bool operator== (const UString &) const;
    bool operator!= (const UString &) const;
    bool operator>  (const UString &) const;
    bool operator<  (const UString &) const;
    bool operator>= (const UString &) const;
    bool operator<= (const UString &) const;

    // conversion operators
    operator const char * () const;             // c-string type

    // utility methods
    static const char * version();
    bool have_value() const;
    size_t length() const;
    size_t size() const;
    UString & format(const char * format, ...);
    UString & trim();
    UString lower() const;
    UString upper() const;
    const char & back() const;
    const char & front() const;

    // find and replace methods
    long int char_find(const char & match) const;
    const UString & char_repl(const char & match, const char & repl);
    UString substr(size_t start, size_t length);
    long find(const UString & match) const;
    const UString replace(const UString & match, const UString & repl);

    // split methods
    const split_ptr & split(const char * match) const;
    const split_ptr & split(const char match) const;
    const split_ptr & split(const char * match, int max_split) const;
    const UString & split_item(size_t index) const;
    size_t split_count() const;

};

// non-member operator overloads
UString operator+ (const UString & lhs, const UString & rhs);

#endif  // __UString_H_
