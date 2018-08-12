#ifndef STUDENT_H
#define STUDENT_H
//You don't need to include string, it is included in person.h
#include "person.h"

class Student: public Person
{
  public:
      Student(std::string name);
};

#endif /* STUDENT_H */
