#include <cstdio>

class c1
{
    int _value = 0;
    c1 ();
public:
    c1 (const int & value) : _value(value) {}

    void setvalue(const int & value) { _value = value; }
    int  getvalue() const { return _value; }
};

void func1(const c1 & obj)
{
    std::printf("value is %d\n", obj.getvalue());
}

class c2
{
    int _value = 0;
    c2 ();
public:
    explicit c2 (const int & value) : _value(value) {}

    void setvalue(const int & value) { _value = value; }
    int  getvalue() const { return _value; }
};

void func2(const c1 & obj)
{
    std::printf("value is %d\n", obj.getvalue());
}

int main()
{
    // default construton in private section prevents this:
    // c1 x;
    c1 obj1 = 'x';
    std::printf("value is %d\n", obj1.getvalue());
    func1('x');

    // explicit keyword prevents this:
    // c2 obj2 = 'y';
    c2 obj2 { 'y' };
    std::printf("value is %d\n", obj2.getvalue());
    func2('y');

    return 0;
}

