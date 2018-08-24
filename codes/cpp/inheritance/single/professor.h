#ifndef PROF_H
#define PROF_H
#include "person.h"

class Professor: private Person
{
public:
    //Professor();
    using Person::Person;
//private:
    //static int nbr;
};
#endif /* PROF_H */
