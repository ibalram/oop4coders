#!/usr/bin/env python
# -*- coding: utf-8 -*-

from person import Person
from student import Student

p = Person("Karim_p");
s = Student("Karim_s");
p.luckyNumber = 5;
p.__num = 6;#no error but no modification either
p._Person__num = 10;
p._t = "admin";
p.info();
s.info();
