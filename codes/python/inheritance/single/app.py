#!/usr/bin/env python
# -*- coding: utf-8 -*-

from person import Person
from student import Student
from professor import Professor

pe = Person("person1")
st = Student("student1", 15)
pr = Professor("professor1")

pe.info()
st.info()
pr.info()
