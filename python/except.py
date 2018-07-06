#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

class NegException (Exception):
	def __init__(self):
		Exception.__init__(self, "Negative numbers don't have a factorial!")

class BigException (Exception):
	def __init__(self):
		Exception.__init__(self, "The number is too big!")

def fact(i):
	if i < 0:
		raise NegException
	if i > 5:
		raise BigException

	if i == 0:
		return 1
	return i * fact(i-1)

if len(sys.argv) < 2:
	print("Please enter an integer value")
	sys.exit()
n = 0
try:
	n = int(sys.argv[1])
except ValueError:
	print("The value must be an integer")
	sys.exit()

try:
	f = fact(n)
	print("Fact(" + str(n) + ")= " + str(f))
except Exception as e:
	print(str(e))
