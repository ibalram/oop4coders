#include "person.h"
#include "student.h"
#include "gradstudent.h"
#include "professor.h"

int main()
{
    //Person pe = Person();//is abstract; cannot be instantiated
    //Student st = Student();//is abstract; cannot be instantiated
    Professor pr = Professor();
    GradStudent gs = GradStudent();

    pr.info();
    gs.info();

    return 0;
}
