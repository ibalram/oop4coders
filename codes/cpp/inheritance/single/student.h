#ifndef STUDENT_H
#define STUDENT_H
#include "person.h"

class Student: public Person
{
public:
    Student(std::string name, int grade);
    void info();
    int luckyNumber;

private:
    int grade;
};
#endif /* STUDENT_H */
