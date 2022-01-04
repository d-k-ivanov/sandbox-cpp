#pragma once

struct BaseConstructor
{
    BaseConstructor(int = 0)
    {
    }
};

class RealNumber;
class Complex;
class Number;

class Number
{
    friend class RealNumber;
    friend class Complex;

public:
    Number& operator=(const Number& n);
    Number(const Number& n);
    virtual ~Number();

    virtual Number operator+(const Number& n) const;
    void Swap(Number& n) noexcept;

    static Number MakeReal(double r);
    static Number MakeComplex(double rpart, double ipart);
    // virtual void Print(const Number& n) const;
    virtual void Print() const;

protected:
    Number();
    Number(BaseConstructor);

private:
    void Redefine(Number* n);
    [[nodiscard]] virtual Number ComplexAdd(const Complex& n) const;
    [[nodiscard]] virtual Number RealAdd(const RealNumber& n) const;

    Number* m_Rep;
    short m_ReferenceCount;
    const char* m_Name = "Number";
};

class Complex : public Number
{
    friend class RealNumber;
    friend class Number;

    Complex(double d, double e);
    Complex(const Complex& c);
    ~Complex() override;

    Number operator+(const Number& n) const override;
    Number RealAdd(const RealNumber& n) const override;
    Number ComplexAdd(const Complex& n) const override;

    // void Print(const Number& n) const override;
    void Print() const override;

    double m_Rpart, m_Ipart;
    const char* m_Name = "Complex";
};

class RealNumber : public Number
{
    friend class Complex;
    friend class Number;

    RealNumber(double r);
    RealNumber(const RealNumber& r);
    ~RealNumber() override;

    Number operator+(const Number& n) const override;
    Number RealAdd(const RealNumber& n) const override;
    Number ComplexAdd(const Complex& n) const override;

    // void Print(const Number& n) const override;
    void Print() const override;

    double m_Val;
    const char* m_Name = "RealNumber";
};
