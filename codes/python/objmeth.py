#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):

	def __init__(self, name, byear):
		self.name = name
		self.byear = byear

	def __str__(self):
		return "(" + self.name + ": " + str(self.byear) + ")"

	def __copy__(self):
		return Person(self.name, self.byear + 2)

	def __eq__(self, other):
		return (self.name == other.name)

	def __lt__(self, other):
		return (self.byear < other.byear)

	def __hash__(self):
		return hash(self.name)

import copy

p = Person("Karim", 1986)
p2 = Person("Karim+1", 1986)
print ("As string: " + str(p))
print ("HashCode: " + str(hash(p)))

p3 = copy.copy(p)
print ("Copy: " + str(p3))
print("p == p3? " + str(p==p3))
print("p == p2? " + str(p==p2))
print("p < p3? " + str(p<p3))
