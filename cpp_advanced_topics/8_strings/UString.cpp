#include "UString.h"

UString::UString()
{
    reset();
}

UString::UString(const char * s)
{
    copy_str(s);
}

UString::UString(const UString & old)
{
    copy_str(old);
}


UString::~UString()
{
    reset();
}

// move constructor
UString::UString(UString && other) noexcept
{
    reset();
    _str = other._str;
    _str_len = other._str_len;
    other._str = nullptr;
    other._str_len = 0;
    other.reset();
}

const char * UString::version()
{
    return _UString_version;
}

void UString::_reset_split_array() const
{
    if (_split_count)
    {
        // dtor the elements in the array
        while(_split_count)
            _split_array[--_split_count].reset();

        _split_array.reset();
        _split_count = 0;
    }
}

void UString::_append_split_array(const UString & s) const
{
    if(_split_count >= _UString_max_split)
        return;

    if (!_split_count)
        _split_array.reset(new _us_ptr[_UString_max_split + 1]);

    _split_array[_split_count] = std::make_shared<UString>(s);
    ++ _split_count;
}

const char * UString::alloc_str(size_t sz)
{
    if (_str)
        reset();

    _str_len = (sz > _UString_max_len) ? _UString_max_len : sz;
    _str = new char[_str_len + 1]();  // new char[]() fills with 0

    return _str;
}

void UString::reset()
{
    _reset_split_array();
    if(_str)
    {
        delete [] _str;
        _str = nullptr;
        _str_len = 0;
    }
}

void UString::swap(UString & other)
{
    std::swap(_str, other._str);
    std::swap(_str_len, other._str_len);
}

const char * UString::c_str() const
{
    return _str;
}

const char * UString::copy_str(const char * s)
{
    if(s)
    {
        size_t len = strnlen(s, _UString_max_len);
        alloc_str(len);
        strncpy((char *)_str, s, len);
        _str_len = len;
    }

    return _str;
}

// copy-and-swap assignment
UString & UString::operator= (UString other)
{
    swap(other);
    return *this;
}

UString & UString::operator+= (const char * rhs)
{
    if(rhs)
    {
        size_t newlen = _str_len + strnlen(rhs, _UString_max_len);
        if (newlen > _UString_max_len)
            newlen = _UString_max_len;

        size_t rhslen = newlen - _str_len;
        if(rhslen < 1)
            return *this;

        char * buf = new char[newlen + 1]();
        if(_str && _str_len)
            memcpy(buf, _str, _str_len);

        memcpy(buf + _str_len, rhs, rhslen);
        copy_str(buf);
        delete [] buf;
    }

    return *this;
}

UString & UString::operator+= (const UString & rhs)
{
    operator+=(rhs.c_str());
    return *this;
}

const char UString::operator[] (const int index) const
{
    if(index < 0)
        return 0;

    if(index >= (int) _str_len)
        return 0;
    else
        return _str[index];
}

bool UString::operator == (const UString & rhs) const
{
    if(std::strncmp(this->c_str(), rhs.c_str(), _UString_max_len) == 0)
        return true;
    else
        return false;
}

bool UString::operator!= (const UString & rhs) const
{
    if(std::strncmp(this->c_str(), rhs.c_str(), _UString_max_len) != 0)
        return true;
    else
        return false;
}

bool UString::operator> (const UString & rhs) const
{
    if(std::strncmp(this->c_str(), rhs.c_str(), _UString_max_len) > 0)
        return true;
    else
        return false;
}

bool UString::operator< (const UString & rhs) const
{
    if(std::strncmp(this->c_str(), rhs.c_str(), _UString_max_len) < 0)
        return true;
    else
        return false;
}

bool UString::operator>= (const UString & rhs) const
{
    if(std::strncmp(this->c_str(), rhs.c_str(), _UString_max_len) >= 0)
        return true;
    else
        return false;
}

bool UString::operator<= (const UString & rhs) const
{
    if(std::strncmp(this->c_str(), rhs.c_str(), _UString_max_len) <= 0)
        return true;
    else
        return false;
}

UString::operator const char * () const
{
    return c_str();
}

bool UString::have_value() const
{
    if(_str)
        return true;
    else
        return false;
}

size_t UString::length() const
{
    return _str_len;
}

size_t UString::size() const
{
    return _str_len;
}

// string format
UString & UString::format(const char * format , ...)
{
    char * buffer;

    va_list args;
    va_start(args, format);

    vasprintf(&buffer, format, args);
    copy_str(buffer);
    free(buffer);   // vasprintf uses malloc

    return *this;
}

// trim leading and trailing spaces
UString & UString::trim()
{
    const static char * whitespace = "\x20\x1b\t\r\n\v\b\f\a";

    // make sure we have a string
    if(!have_value())
        return *this;

    size_t begin = 0;
    size_t end = length() - 1;

    for (begin = 0; begin <= end; ++begin)
        if (strchr(whitespace, _str[begin]) == nullptr)
            break;

    for ( ; end > begin; --end)
    {
        if (strchr(whitespace, _str[end]) == nullptr)
            break;
        else
            _str[end] = '\0';
    }

    if (begin)
        for (size_t i = 0; _str[i]; ++i)
            _str[i] = _str[begin++];

    _str_len = strlen(_str);
    return *this;
}

UString UString::lower() const
{
    UString rs = *this;
    for (size_t i = 0; rs._str[i]; ++i)
        rs._str[i] = tolower(rs._str[i]);

    return rs;
}

UString UString::upper() const
{
    UString rs = *this;
    for (size_t i = 0; rs._str[i]; ++i)
        rs._str[i] = toupper(rs._str[i]);

    return rs;
}

const char & UString::back() const
{
    return _str[length() - 1];
}

const char & UString::front() const
{
    return _str[0];
}

long int UString::char_find(const char & match) const
{
    for (size_t i = 0; _str[i]; ++i)
        if(_str[i] == match) return i;

    return -1;
}

const UString & UString::char_repl(const char & match, const char & repl)
{
    for (size_t i = 0; _str[i]; ++i)
        if(_str[i] == match) _str[i] = repl;

    return *this;
}

UString UString::substr(size_t start, size_t length)
{
    UString rs;
    char * buf;

    if ((length + 1) > _UString_max_len || (start + length) > _UString_max_len)
        return rs;

    if (length > _str_len - start)
        return rs;

    if (!_str)
        return rs;

    buf = new char[length + 1]();
    memcpy(buf, _str + start, length);
    rs = buf;
    delete [] buf;

    return rs;
}

long UString::find(const UString & match) const
{
    char * pos = strstr(_str, match.c_str());
    if(pos)
        return (long) (pos - _str);
    else
        return -1;
}

const UString UString::replace(const UString & match, const UString & repl)
{
    UString rs;
    long f1 = find(match);
    if (f1 >= 0)
    {
        size_t pos1 = (size_t) f1;
        size_t pos2 = pos1 + match.length();
        UString s1 = pos1 > 0 ? substr(0, pos1) : "";
        UString s2 = substr(pos2, length() - pos2);
        rs = s1 + repl + s2;
    }

    return rs;
}

// non-destructive split
const UString::split_ptr & UString::split(const char match) const
{
    const char match_s[2] = {match, 0};
    return split(match_s, -1);
}

const UString::split_ptr & UString::split(const char * match)const
{
    return split(match, -1);
}

const UString::split_ptr & UString::split(const char * match, int max_split) const
{
    _reset_split_array();

    if (length() < 1)
        return _split_array;

    if (max_split < 0)
        max_split = _UString_max_split;

    size_t match_len = strnlen(match, _UString_max_len);

    if(match_len >= _UString_max_len)
        return _split_array;

    char * mi;              // match index
    char * pstr = _str;     // string pointer

    while (( mi = strstr(pstr, match)) && --max_split)
    {
        if(mi != pstr)
        {
            size_t lhsz = mi - pstr;
            char * cslhs = new char[lhsz + 1]();
            memcpy(cslhs, pstr, lhsz);
            _append_split_array(cslhs);
            delete [] cslhs;
            pstr += lhsz;
        }
        pstr += match_len;
    }

    if (*pstr != '\0')
        _append_split_array(pstr);

    return _split_array;
}

// zero-based index of _split_array
const UString & UString::split_item(size_t index) const
{
    if(_split_count > index)
        return *_split_array[index];
    else
        return *this;
}

size_t UString::split_count() const
{
    return _split_count;
}

UString operator+ (const UString & lhs, const UString & rhs)
{
    UString rs = lhs;
    rs += rhs;

    return rs;
}

#ifdef _MSC_VER

int vasprintf(char ** ret, const char * format, va_list ap)
{
    int len;
    char *buffer;

    len = _vscprintf(format, ap) + 1;
    buffer = (char *) malloc(len * sizeof(char));
    if (!buffer)
        return 0;

    vsprintf_s(buffer, len, format, ap);
    *ret = buffer;
    return len -1;
}

#endif // _MSC_VER
