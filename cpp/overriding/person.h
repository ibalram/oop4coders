#include <iostream>
#include <string>

class Person
{
    public:

        Person(std::string name, int byear);
        void info();

    private:
        std::string name;
        int byear;
};
