#include "person.h"
#include "student.h"
#include "professor.h"

int main()
{
    Person pe = Person("person1");
    Student st = Student("student1", 15);
    Professor pr = Professor("professor1");
    pe.luckyNumber = 1;
    st.luckyNumber = 2;
    //pr.luckyNumber = 3; //private

    pe.info();
    st.info();
    //pr.info(); //private

    return 0;
}
