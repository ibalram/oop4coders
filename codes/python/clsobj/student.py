#!/usr/bin/env python
# -*- coding: utf-8 -*-

from person import Person

class Student(Person):

	def __init__(self, name, byear, grade):
		Person.__init__(self, name, byear)
		self.grade = grade

	def info(self):
		Person.info(self)
		print("My grade: " + str(self.grade))

if __name__ == "__main__":
	s = Student("Karim", 1986, 2)
	s.info()
