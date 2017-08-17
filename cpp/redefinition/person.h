#include <iostream>
#include <string>

class Person
{
    public:
        
        Person(std::string name, int age);
        void info();
        
    private:
        std::string name;
        int age;
}; 
