#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):

	nbr = 0

	def __init__(self, name, byear):
		self.name = name
		self.byear = byear
		Person.nbr = Person.nbr + 1

	def __del__(self):
		Person.nbr = Person.nbr - 1
		print (self.name + " is out")

	def info(self):
		print("My name: " + self.name + ", My birth year: " + str(self.byear))

	@staticmethod
	def population():
		return Person.nbr

p = Person("Karim", 1986)
p2 = Person("Karim+1", 1987);

p.info()
p2.info()
nbr = Person.population()

print ("The number of persons: " + str(nbr));
del p2
nbr = Person.population()
print ("The number of persons: " + str(nbr));
