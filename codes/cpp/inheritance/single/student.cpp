#include "student.h"

Student::Student(std::string name, int byear, int grade):
    Person(name, byear)
{
    this->grade = grade;
}

void Student::info()
{
    Person::info();
    std::cout << "My grade: " << this->grade << "\n";
}


int main()
{
    Student s = Student("Karim", 1986, 2);
    s.info();
}
