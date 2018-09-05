#include <iostream>
#include <string>


class Person {
public:
    Person(std::string name){
        this->name = name;
        std::cout << "Person" << std::endl;
    }
protected:
    std::string name;
};

class Student: public Person {
public:
    Student(std::string name, double mark): Person(name){
        this->mark = mark;
        std::cout << "Student" << std::endl;
    }
protected:
    double mark;
};

class Professor: public Person {
public:
    Professor(std::string name, int hours): Person(name){
        this->hours = hours;
        std::cout << "Professor" << std::endl;
    }
protected:
    int hours;
};

class PhdStudent: public Student, public Professor {
public:
    PhdStudent(std::string name, int hours, double mark):
        Student(name, mark), Professor(name, hours){
        this->hours = hours;
        std::cout << "PhdStudent" << std::endl;
    }

    void info() {
        //reference to 'name' is ambiguous
        //std::cout << "name: " << name << std::endl;
        std::cout << "student name: " << Student::name << std::endl;
        std::cout << "professor name: " << Professor::name << std::endl;
    }
};


int main()
{
    PhdStudent ps = PhdStudent("Karim", 8, 12.5);
    ps.info();
    return 0;
}
