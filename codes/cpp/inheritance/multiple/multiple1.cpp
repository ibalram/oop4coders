#include <iostream>
#include <string>

class Person {
public:
    Person(){
        std::cout << "I am a person" << std::endl;
    }
};

class Machine {
public:
    Machine(){
        std::cout << "I am a machine" << std::endl;
    }
};

class Android: public Machine, public Person {
public:
    Android(){
        std::cout << "So, I am an android" << std::endl;
    }
};

class Cyborg: public Person, public Machine {
public:
    Cyborg(): Machine(), Person(){
        std::cout << "So, I am a cyborg" << std::endl;
    }
};


int main()
{
    Person p;
    std::cout << "=====================" << std::endl;
    Machine m;
    std::cout << "=====================" << std::endl;
    Android a;
    std::cout << "=====================" << std::endl;
    Cyborg c;
    std::cout << "=====================" << std::endl;
}
