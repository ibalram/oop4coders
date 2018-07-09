#include <iostream>
#include <string>

class Person
{

  public:

    Person(std::string name, int byear){
      this->name = name;
      this->byear = byear;
    };

  private:
    friend std::ostream& operator<<(std::ostream &strm, const Person &p);
    std::string name;
    int byear;
};

std::ostream& operator<<(std::ostream &strm, const Person &p) {
  return strm << "(" << p.name << ", " << p.byear << ")";
}

int main()
{
  Person p = Person("Karim", 1986);
  std::cout << "As string: " << p << "\n";
}
