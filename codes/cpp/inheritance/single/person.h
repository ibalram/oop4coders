#ifndef PERSON_H
#define PERSON_H

#include <iostream>
#include <string>

class Person
{
public:
    Person(std::string name);
    void info();
    void notImplemented();
    int luckyNumber;

private:
    std::string name;
};
#endif /* PERSON_H */
