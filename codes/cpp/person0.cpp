#include <iostream>
#include <string>

class Person
{

  public:

    Person(std::string name, int byear){
      this->name = name;
      this->byear = byear;
      nbr++;
    };

    ~Person(){
      nbr--;
      std::cout << name << " is out\n";
    };

    void info() {
      std::cout << "My name: " << name ;
      std::cout << ", My birth year: " << this->byear << "\n";
    };

    static int population() {
      return nbr;
    };

  private:

    std::string name;
    int byear;
    static int nbr;
};

int Person::nbr = 0;

int main()
{
  Person p = Person("Karim", 1986);
  Person* p2 = new Person("Karim+1", 1987);

  p.info();
  p2->info();
  int nbr = Person::population();

  std::cout << "The number of persons: " << nbr << "\n";
  delete p2; //delete the pointer
  nbr = Person::population();
  std::cout << "The number of persons: " << nbr << "\n";
}
