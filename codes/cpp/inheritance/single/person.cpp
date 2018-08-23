#include "person.h"

Person::Person(std::string name)
{
    this->name = name;
}

void Person::info()
{
    std::cout << "My name: " << this->name << "\n";
    std::cout << "My Lucky number: " << this->luckyNumber << "\n";
}
