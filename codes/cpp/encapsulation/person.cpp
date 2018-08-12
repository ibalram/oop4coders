#include "person.h"
#include <iostream>

int Person::nbr = 0;

Person::Person(std::string name)
{
	this->name = name;
	num = (Person::nbr++);
	t = "person";
	luckyNumber = 0;
}

void Person::info()
{
	std::cout << "My name: " << name << "\n";
	std::cout << "My number: " << num << "\n";
	std::cout << "I am  a: " << t << "\n";
	std::cout << "My lucky number is: " << luckyNumber << "\n";
	std::cout << "--------------------------\n";
}

void Person::copy(Person other)
{
	name = other.name;
	t = other.t;
}
