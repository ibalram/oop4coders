#ifndef PROF_H
#define PROF_H
#include "person.h"

class Professor: private Person
{
public:
    Professor(std::string name);
};
#endif /* PROF_H */
