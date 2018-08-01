#include <iostream>
#include <string>

class Person
{

  public:

    Person(std::string name, int byear){
      this->name = name;
      this->byear = byear;
    };

    Person clone() {
      return Person(name, byear + 1);
    };

  private:
    friend std::ostream& operator<<(std::ostream &strm, const Person &p);
    friend bool operator==(const Person &p1, const Person &p2);
    friend bool operator>(const Person &p1, const Person &p2);
    std::string name;
    int byear;
};

std::ostream& operator<<(std::ostream &strm, const Person &p) {
  return strm << "(" << p.name << ": " << p.byear << ")";
}

bool operator==(const Person &p1, const Person &p2) {
  return p1.name == p2.name;
}

bool operator>(const Person &p1, const Person &p2) {
  if (p1.byear == p2.byear) return (p1.name.compare(p2.name) > 0);
  return (p1.byear > p2.byear);
}

int main()
{
  Person p = Person("Karim", 1986);
  Person p2 = Person("Karim+1", 1986);

  std::cout << "As string: " << p << "\n";

  Person p3 = p.clone();
  std::cout << "Copy: " << p3 << "\n";
  std::cout << "p == p3? " << (p == p3) << "\n";
  std::cout << "p > p3? " << (p > p3) << "\n";

}
