import sys
sys.setrecursionlimit(10000)

def factor(x, f):
	if x % f == 0:
		print("factor "+str(f))
		return factor(x/f, f)
		
	if (f<x):
		return factor(x, f+1)
	else:
		print("largest prime factor: {}".format(f))

def problem3(n):
	factor(n, 2)	
	
problem3(600851475143)
