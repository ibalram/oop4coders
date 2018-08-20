#include "student.h"

Student::Student(std::string name): Person(name)
{
    this->t = "student";//protected member
    this->luckyNumber = 1;//public member
    //this->name = "other name";//private member: error
}
