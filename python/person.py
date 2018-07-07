#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):
	def __init__(self, name, byear):
		self.name = name
		self.byear = byear

	def info(self):
		print("My name: " + self.name)
		print("My birth year: " + str(self.byear))

if __name__ == "__main__":
	p = Person("Karim", 1986)
	p.info()
