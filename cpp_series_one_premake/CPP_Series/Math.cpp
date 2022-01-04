#include "Math.h"

#include <iostream>

/// Used only by the letters.
Number::Number(BaseConstructor):
    m_Rep(nullptr),
    m_ReferenceCount(1)
{
}

/// Used by static factory functions.
Number::Number():
    m_Rep(nullptr),
    m_ReferenceCount(0)
{
}

/// Used by user and static factory functions.
Number::Number(const Number& n):
    m_Rep(n.m_Rep),
    m_ReferenceCount(0)
{
    std::cout << "Constructing a Number using Number::Number" << std::endl;
    if (n.m_Rep)
        n.m_Rep->m_ReferenceCount++;
}

Number Number::MakeReal(const double r)
{
    Number n;
    n.Redefine(new RealNumber(r));
    return n;
}

Number Number::MakeComplex(const double rpart, const double ipart)
{
    Number n;
    n.Redefine(new Complex(rpart, ipart));
    return n;
}

void Number::Print() const
{
        m_Rep->Print();
}

Number::~Number()
{
    std::cout << "Destructing Number::~Number()" << std::endl;
    if (m_Rep && --m_Rep->m_ReferenceCount == 0)
        delete m_Rep;
}

Number& Number::operator=(const Number& n)
{
    std::cout << "Assigning a Number using Number::operator=" << std::endl;
    Number temp(n);
    this->Swap(temp);
    return *this;
}

void Number::Swap(Number& n) noexcept
{
    std::swap(this->m_Rep, n.m_Rep);
}

Number Number::operator+(const Number& n) const
{
    return m_Rep->operator+(n);
}

Number Number::ComplexAdd(const Complex& n) const
{
    return m_Rep->ComplexAdd(n);
}

Number Number::RealAdd(const RealNumber& n) const
{
    return m_Rep->RealAdd(n);
}

void Number::Redefine(Number* n)
{
    if (m_Rep && --m_Rep->m_ReferenceCount == 0)
        delete m_Rep;
    m_Rep = n;
}

Complex::Complex(const double d, const double e):
    Number(BaseConstructor()),
    m_Rpart(d),
    m_Ipart(e)
{
    std::cout << "Constructing a Complex" << std::endl;
}

Complex::Complex(const Complex& c):
    Number(BaseConstructor()),
    m_Rpart(c.m_Rpart),
    m_Ipart(c.m_Ipart)
{
    std::cout << "Constructing a Complex using Complex::Complex" << std::endl;
}

Complex::~Complex()
{
    std::cout << "Destructing Complex::~Complex()" << std::endl;
}

Number Complex::operator+(const Number& n) const
{
    return n.ComplexAdd(*this);
}

Number Complex::RealAdd(const RealNumber& n) const
{
    std::cout << "Complex::RealAdd" << std::endl;
    return MakeComplex(this->m_Rpart + n.m_Val, this->m_Ipart);
}

Number Complex::ComplexAdd(const Complex& n) const
{
    std::cout << "Complex::ComplexAdd" << std::endl;
    return MakeComplex(this->m_Rpart + n.m_Rpart, this->m_Ipart + n.m_Ipart);
}

void Complex::Print() const
{
    std::cout << "Type: Complex" << std::endl;
}

RealNumber::RealNumber(const double r):
    Number(BaseConstructor()),
    m_Val(r)
{
    std::cout << "Constructing a RealNumber" << std::endl;
}

RealNumber::RealNumber(const RealNumber& r):
    Number(BaseConstructor()),
    m_Val(r.m_Val)
{
    std::cout << "Constructing a RealNumber using RealNumber::RealNumber" << std::endl;
}

RealNumber::~RealNumber()
{
    std::cout << "Destructing RealNumber::~RealNumber()" << std::endl;
}

Number RealNumber::operator+(const Number& n) const
{
    return n.RealAdd(*this);
}

Number RealNumber::RealAdd(const RealNumber& n) const
{
    std::cout << "RealNumber::RealAdd" << std::endl;
    return Number::MakeReal(this->m_Val + n.m_Val);
}

Number RealNumber::ComplexAdd(const Complex& n) const
{
    std::cout << "RealNumber::ComplexAdd" << std::endl;
    return Number::MakeComplex(this->m_Val + n.m_Rpart, n.m_Ipart);
}

void RealNumber::Print() const
{
    std::cout << "Type: RealNumber" << std::endl;
}


// namespace std
// {
//     template <>
//     void swap(Number& n1, Number& n2)
//     {
//         n1.Swap(n2);
//     }
// }

namespace Math
{
    void Main()
    {
        const Number n1 = Number::MakeComplex(1, 2);
        const Number n2 = Number::MakeReal(10);
        const Number n3 = n1 + n2;
        n1.Print();
        n2.Print();
        n3.Print();

        std::cout << "Finished" << std::endl;
    }
}
