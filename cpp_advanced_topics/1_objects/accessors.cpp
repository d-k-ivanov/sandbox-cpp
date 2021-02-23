#include <iostream>

class A
{
    int          a = 0;
    const char * b = "";
    float        c = 0;
public:
    A (const int a, const char * b, const float c) : a(a), b(b), c(c) {};

    void seta ( const int    val ) { a = val; }
    void setb ( const char * val ) { b = val; }
    void setc ( const float  val ) { c = val; }
    int          geta() const { return a; }
    const char * getb() const { return b; }
    float        getc() const { return c; }
};

struct B
{
private:
    int          a = 0;
    const char * b = "";
    float        c = 0;
public:
    B (const int a, const char * b, const float c) : a(a), b(b), c(c) {};

    void seta ( const int    val ) { a = val; }
    void setb ( const char * val ) { b = val; }
    void setc ( const float  val ) { c = val; }
    int          geta() const { return a; }
    const char * getb() const { return b; }
    float        getc() const { return c; }
};

int main()
{
    A a(1, "two", 3.4);

    std::cout << "INT: "<<  a.geta() << std::endl;
    std::cout << "STR: "<<  a.getb() << std::endl;
    std::cout << "FLT: "<<  a.getc() << std::endl;

    B b(1, "two", 3.4);

    std::cout << "INT: "<<  b.geta()<< std::endl;
    std::cout << "STR: "<<  b.getb()<< std::endl;
    std::cout << "FLT: "<<  b.getc()<< std::endl;

    return 0;
}
