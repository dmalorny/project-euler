def is_multiple_of_3_or_5(x):
	return x % 3 == 0 or x % 5 == 0
	
def sum_multiples_of_3_or_5(max):
	sum = 0
	for x in range(max):
		if is_multiple_of_3_or_5(x):
			sum += x
			
	print("sum: {}".format(sum))
	
sum_multiples_of_3_or_5(1000)
