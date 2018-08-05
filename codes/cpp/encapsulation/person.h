#ifndef PERSON_H
#define PERSON_H

#include <string>

class Person
{
    public:
      int luckyNumber;
      Person(std::string name);
      void info();

    protected:
      std::string t;

    private:
      std::string name;
      int num;
      static int nbr;
      void setNum();
};
#endif /* PERSON_H */
