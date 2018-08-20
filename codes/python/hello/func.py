#!/usr/bin/env python
# -*- coding: utf-8 -*-

if __name__ == "__main__":
	from func import fact
	import sys
	sys.stdout.write("Please enter an integer value: ")
	n = int(raw_input())
	sys.stdout.write("Fact(" + str(n) + ")= ")
	print(str(fact(n)))

def fact(i):
	if i <= 1:
		return 1
	return i * fact(i-1)