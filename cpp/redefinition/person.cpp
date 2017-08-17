#include "person.h"

Person::Person(std::string name, int age)
{
	this->name = name;
	this->age = age;
}

void Person::info()
{
	std::cout << "My name: " << this->name << "\n";
	std::cout << "My age: " << this->age << "\n";
}

/*
int main()
{
	Person p = Person("Karim", 31);
    p.info();
} 
*/
