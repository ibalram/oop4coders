#include "person.h"

Person::Person(std::string name)
{
    this->name = name;
    this->luckyNumber = 2;
}

void Person::info()
{
    std::cout << "My name: " << this->name << "\n";
    std::cout << "My Lucky number: " << this->luckyNumber << "\n";
}
