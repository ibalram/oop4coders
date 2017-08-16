#include <iostream>
#include <string>

class Person
{
    public:
        
        Person(std::string name, int age){
            this->name = name;
            this->age = age;
        };
        
        void info() {
            std::cout << "My name: " << this->name << "\n";
            std::cout << "My age: " << this->age << "\n";
        };
    private:
        std::string name;
        int age;
}; 


int main()
{
	Person p = Person("Karim", 31);
    p.info();
} 
