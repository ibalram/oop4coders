#include "student.h"

Student::Student(std::string name, int grade):
    Person(name)
{
    this->grade = grade;
}

void Student::info()
{
    Person::info();
    std::cout << "My grade: " << this->grade << "\n";
    std::cout << "My luckyNumber2: " << this->luckyNumber << "\n";
}
