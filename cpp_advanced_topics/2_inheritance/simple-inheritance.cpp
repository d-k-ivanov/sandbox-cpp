#include <iostream>
#include <string>

// Fur class for multiple inheritance demo:
class Fur
{
private:
    std::string _quality;
    Fur() {};
protected:
    Fur(const std::string & f) : _quality(f) {};
public:
    const std::string & quality() const { return _quality; };
};

// Animal class (base)
class Animal
{
    std::string _name;
    std::string _type;
    std::string _sound;
    // private constructor prevents construction of base class
    Animal(){}

    // friend classes or fucntions could be specified to grant access to the private section, otherwise use protected
    // friend class Dog;
    // friend class Cat;
    // friend class Pig;

    //!! Warning: BAD PRACTICE
    friend const std::string & get_animal_name(const Animal &);
protected:

    // protected constructor for use by derived classes
    Animal ( const std::string & n, const std::string & t, const std::string & s )
    : _name(n), _type(t), _sound(s) {}
public:
    virtual void speak() const;
    const std::string & name() const { return _name; }
    const std::string & type() const { return _type; }
    const std::string & sound() const { return _sound; }

    virtual ~Animal() {};
};

void Animal::speak() const
{
    printf("%s the %s says %s\n", _name.c_str(), _type.c_str(), _sound.c_str());
}

// Dog class - derived from Animal
class Dog : public Animal, public Fur
{
    int _walked;
public:
    Dog( std::string n ) : Animal(n, "dog", "woof"), Fur("warm"), _walked(0) {};
    int walk() { return ++_walked; }
};

// Cat class - derived from Animal
class Cat : public Animal, public Fur
{
    int _petted;
public:
    Cat( std::string n ) : Animal(n, "cat", "meow"), Fur("silky"), _petted(0) {};
    int pet() { return ++_petted; }
    void speak() const { Animal::speak(); std::puts("puurrrrr"); }
};

// Pig class - derived from Animal
class Pig : public Animal
{
    int _fed;
public:
    Pig( std::string n) : Animal(n, "pig", "oink"), _fed(0) {};
    std::string latin() const { return Animal::name() + "-ay"; };
    // std::string latin() const { return _name + "-ay"; }; // Only works in friend classes
    int feed() { return ++_fed; }
};

const std::string & get_animal_name(const Animal & a)
{
    return a._name;
}

int main()
{
    Dog d("Rover");
    Cat c("Fluffy");
    Pig p("Arnold");

    d.speak();
    c.speak();
    p.speak();

    std::cout << std::endl;

    std::cout << "the " << d.type() << " has been walked " << d.walk() << " times" << std::endl;
    std::cout << "the " << c.type() << " has been petted " << c.pet() << " times" << std::endl;
    std::cout << "the " << p.type() << " has been fed " << p.feed() << " times" << std::endl;

    std::cout << std::endl;

    std::cout << "the " << p.type() << " is sometimes calles " << p.latin() << std::endl;

    std::cout << std::endl;

    std::cout << "Name of " << d.type() << " is " << get_animal_name(d) << std::endl;
    std::cout << "Name of " << c.type() << " is " << get_animal_name(c) << std::endl;
    std::cout << "Name of " << p.type() << " is " << get_animal_name(p) << std::endl;

    std::cout << std::endl;

    std::cout << "the " << c.type() << " has " << c.quality() << " fur" << std::endl;
    std::cout << "the " << d.type() << " has " << d.quality() << " fur" << std::endl;

    std::cout << std::endl;

    Animal * ap[] { &d, &c, &p };
    for (auto &&p : ap)
    {
        p->speak();
    }

}
