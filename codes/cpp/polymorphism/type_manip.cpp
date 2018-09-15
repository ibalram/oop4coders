#include <iostream>
#include <string>
#include <typeinfo>    // for 'typeid'

class Person {
public:
    void talk(){
        std::cout << "I am a person" << std::endl;
    }
};

class Student: public Person {
public:
    virtual void study(){
        std::cout << "I am studying" << std::endl;
    }
};

class Professor: public Person {
    void teach(){
        std::cout << "I am teaching" << std::endl;
    }
};

int main()
{
    Person pe;
    Person st = Student();
    Person pr = Professor();

    std::cout << "Type of pe is: " << typeid(pe).name() << std::endl;
    std::cout << "Type of st is: " << typeid(st).name() << std::endl;
    std::cout << "Type of pr is: " << typeid(pr).name() << std::endl;

    return 0;
}
