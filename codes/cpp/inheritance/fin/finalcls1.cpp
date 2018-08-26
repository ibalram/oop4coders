//Final indicator
template <typename T>
class MakeFinal
{
private:
   MakeFinal() {}
   friend T;
};

//Final class
class Person: virtual MakeFinal<Person> {};

class Student: public Person {};

int main()
{
    Person p = Person();
    //Student s = Student();//can't instantiate

    return 0;
}
