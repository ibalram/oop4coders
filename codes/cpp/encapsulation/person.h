#ifndef PERSON_H
#define PERSON_H

#include <string>

class Person
{

  friend class Frnd;
  friend void info_fct(Person p);

  public:
    int luckyNumber;
    Person(std::string name);
    void info();
    void copy(Person other);

  protected:
    std::string t;

  private:
    std::string name;
    int num;
    static int nbr;
};
#endif /* PERSON_H */
