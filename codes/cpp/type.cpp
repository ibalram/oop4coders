#include <iostream>
#include <typeinfo>

class Person {};
class Animal {};

int main()
{
  Person karim = Person();
  Animal cat = Animal();

  std::cout << "variable karim is of type : " << typeid(karim).name() << "\n";

  //No instanceof
}
