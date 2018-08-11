#!/usr/bin/env python
# -*- coding: utf-8 -*-

from person import Person

class Student(Person):

	def __init__(self, name):
		Person.__init__(self, name)
		self._t = "student"
