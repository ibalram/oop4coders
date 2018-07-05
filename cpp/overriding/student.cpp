#include "student.h"

Student::Student(std::string name, int age, int grade):
	Person(name, age)
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
	Student s = Student("Karim", 19, 2);
    s.info();
} 
