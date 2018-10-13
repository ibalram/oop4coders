#include <iostream>
#include <string>

class Person {
public:
    virtual void talk(){ std::cout << "I am a person" << std::endl; }
    void type(){ std::cout << "Person" << std::endl; }
};

class Student: public Person {
public:
    void talk(){ std::cout << "I am a student" << std::endl; }
    void type(){ std::cout << "Student" << std::endl; }
};

int main()
{
    Person *pe = new Person();
    Student *st = new Student();
    Person *pst = st;

    pe->talk(); // I am a person
    st->talk(); // I am a student
    pst->talk(); //I am a student

    pe->type(); //Person
    st->type(); //Student
    pst->type(); //Person

    return 0;
}
