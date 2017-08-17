#include <iostream>
#include <string>
#include "person.h"

class Student: public Person
{
    public:
        Student(std::string name, int age, int grade);
        using Person::info;
        void info();
        
    private:
        int grade;
}; 
