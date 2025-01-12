#include <iostream>

class TestClass
{
public:
    TestClass(int x)
    :
    x(x)
    {}

    inline int get_x() { return x; }
    inline void print_x()
    {
        std::cout << x << std::endl;
    }
private:
    int x;
};