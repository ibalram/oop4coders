#include <iostream>
#include <string>
#include "person.h"

class Student: public Person
{
    public:
        Student(std::string name, int byear, int grade);
        using Person::info;
        void info();

    private:
        int grade;
};
