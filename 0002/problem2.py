def even(x):
	return x % 2 == 0

def problem2(n):
	sum = 0
	a, b = 0, 1
	while a < n:
		print(a, end=' ')
		a, b = b, a+b
		
		if even(a): sum += a

	print()
	print("sum: {}".format(sum))
	
	
problem2(4000000)
