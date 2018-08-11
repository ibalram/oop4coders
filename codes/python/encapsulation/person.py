#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Person(object):

	nbr = 0

	def __init__(self, name):
		self.__name = name
		self.__num = Person.nbr
		self._t = "person"
		self.luckyNumber = 0
		Person.nbr += 1

	def info(self):
		print("My name: " + self.__name)
		print("My number: " + str(self.__num))
		print("I am a: " + self._t)
		print("My lucky number is: " + str(self.luckyNumber))
		print("--------------------------")
