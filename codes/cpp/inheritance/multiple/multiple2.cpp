#include <iostream>
#include <string>

class Person {
public:
    Person(std::string name){
        this->name = name;
        serial = 5;
    };
    void info() {
        std::cout << "Person name: " << name << std::endl;
        std::cout << "Person serial: " << serial << std::endl;
    }
protected:
    std::string name;
    int serial;
};

class Machine {
public:
    Machine(int serial){
        this->serial = serial;
    }
    void info() {
        std::cout << "Machine serial: " << serial << std::endl;
    }
protected:
    int serial;
};

class Android: public Machine, public Person {
public:
    Android(std::string name, int serial): Machine(serial), Person(name){
    }
};

class Cyborg: public Person, public Machine {
public:
    Cyborg(std::string name, int serial): Machine(serial), Person(name){
    }

    void info() {
        std::cout << "Cyborg name: " << name << std::endl;
        //reference to 'serial' is ambiguous
        //std::cout << "Cyborg Serial: " << serial << std::endl;
        std::cout << "Cyborg.Person Serial: " << Person::serial << std::endl;
        std::cout << "Cyborg.Machine Serial: " << Machine::serial << std::endl;
    }
};


int main()
{
    Person p = Person("Person");
    Machine m = Machine(1);
    Android a = Android("Android", 2);
    Cyborg c = Cyborg("Cyborg", 3);

    p.info();
    m.info();
    //a.info(); //request for member 'info' is ambiguous
    c.info();
}

//This is just for LaTeX editing
/*
int main()
{
    Android a = Android(); //or Android a;
    //a.info(); //request for member 'info' is ambiguous
    return 0;
}
 */
