#ifndef FRND_H
#define FRND_H

#include <iostream>
#include "person.h"

class Frnd
{
  public:
    static void info(Person p) {
      std::cout << "Friend class- name: " << p.name << "\n";
      std::cout << "Friend class- job: " << p.t << "\n";
    }
};
#endif /* FRND_H */
