#include <iostream>

class Person {
public:
    void virtual finalMethod() final {
        std::cout << "Person final method\n";
    };
    void method() {
        std::cout << "Person method\n";
    };
    void virtual virtualMethod() {
        std::cout << "Person virtual method\n";
    };
};

class Student: public Person {
public:
    //void virtual finalMethod() {};//cannot override
    void method() {
        std::cout << "Student method\n";
    };
    void virtualMethod() {
        std::cout << "Student virtual method\n";
    };
};

int main()
{
    Person* p = new Person();
    Student* s = new Student();
    Person* p2 = s;

    p->finalMethod();
    s->finalMethod();
    p2->finalMethod();

    p->method();
    s->method();
    p2->method();

    p->virtualMethod();
    s->virtualMethod();
    p2->virtualMethod();

    return 0;
}
