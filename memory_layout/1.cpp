struct A
{
    virtual void f();
    char x;
    int y;
};

void A::f()
{
}

struct B: public A
{
    virtual void f();
    double z;
};

void B::f()
{
}

int main(int argc, char *argv[])
{
    B b;
}
