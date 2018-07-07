#include <iostream>
#include <string>

class Person
{
    public:

        Person(std::string name, int byeay){
            this->name = name;
            this->byear = byear;
        };

        void info() {
            std::cout << "My name: " << this->name << "\n";
            std::cout << "My birth year: " << this->byear << "\n";
        };
    private:
        std::string name;
        int byear;
};


int main()
{
	Person p = Person("Karim", 1996);
  p.info();
}
