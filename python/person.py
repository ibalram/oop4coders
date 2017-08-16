#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):
	def __init__(self, name, age):
		self.name = name 
		self.age = age
		
	def info(self):
		print("My name: " + self.name)
		print("My age: " + str(self.age))

if __name__ == "__main__":
	p = Person("Karim", 31)
	p.info()
