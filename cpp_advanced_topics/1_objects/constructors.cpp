#include <cstdio>
#include <string>

const std::string unk = "unknown";
const std::string clone_prefix = "clone-";

// -- interface --
class Person
{
    std::string _type  = "";
    std::string _name  = "";
    std::string _sound = "";
public:
    Person();                                                                               // default constructor
    Person(const std::string & type, const std::string & name, const std::string & sound);  // custom constructor
    Person(const Person &);                                                                 // copy constructor
    Person & operator = (const Person &);                                                   // copy operator
    ~Person();                                                                              // destructor

    void print() const;
};

// -- implementation --
Person::Person() : _type(unk), _name(unk), _sound(unk)
{
    std::puts("default constructor");
}

Person::Person(const std::string & type, const std::string & name, const std::string & sound) : _type(type), _name(name), _sound(sound)
{
    std::puts("constructor with arguments");
}

Person::Person(const Person & rhs)
{
    puts("copy constructor");
    _name = clone_prefix + rhs._name;
    _type = rhs._type;
    _sound = rhs._sound;
}

Person::~Person()
{
    std::printf("destructor: %s the %s\n", _name.c_str(), _type.c_str());
}

void Person::print () const
{
    std::printf("%s the %s says %s\n", _name.c_str(), _type.c_str(), _sound.c_str());
}

Person & Person::operator = (const Person & rhs)
{
    std::puts("copy operator");
    if(this != &rhs)
    {
        _name = clone_prefix + rhs._name;
        _type = rhs._type;
        _sound = rhs._sound;
    }
    return *this;
}

int main()
{
    Person a;
    a.print();

    const Person b("Human", "John", "Awwww");
    b.print();

    const Person c = b;
    c.print();

    a = c;
    a.print();

    return 0;
}
