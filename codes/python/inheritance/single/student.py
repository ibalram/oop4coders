#!/usr/bin/env python
# -*- coding: utf-8 -*-

from person import Person

class Student(Person):

    def __init__(self, name, grade):
        Person.__init__(self, name)
        #super(Student, self).__init__(name)#the same
        self.grade = grade

    def info(self):
        super(Student, self).info()
        #Person.info(self) #the same
        print("My grade: " + str(self.grade))
