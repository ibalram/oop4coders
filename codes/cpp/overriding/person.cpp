#include "person.h"

Person::Person(std::string name, int byear)
{
	this->name = name;
	this->byear = byear;
}

void Person::info()
{
	std::cout << "My name: " << this->name << "\n";
	std::cout << "My birth year: " << this->byear << "\n";
}

/*
int main()
{
	Person p = Person("Karim", 31);
    p.info();
}
*/
