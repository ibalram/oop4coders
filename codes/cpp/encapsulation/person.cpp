#include "person.h"
#include <iostream>

int Person::nbr = 0;

Person::Person(std::string name)
{
	this->name = name;
	this->num = (Person::nbr++);
	this->t = "person";
	this->luckyNumber = 0;
}

void Person::info()
{
	std::cout << "My name: " << this->name << "\n";
	std::cout << "My number: " << this->num << "\n";
	std::cout << "I am  a: " << this->t << "\n";
	std::cout << "My lucky number is: " << this->luckyNumber << "\n";
	std::cout << "--------------------------\n";
}
