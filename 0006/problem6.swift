func square(x: Int) -> Int {
	return x*x
}

func sum_of_squares(n: Int) -> Int {
	var sum = 0
	for i in 1 ... n {
		sum += square(x: i)
	}
	return sum
}

func square_of_sum(n: Int) -> Int {
	var sum = 0
	for i in 1 ... n {
		sum += i
	}
	return square(x: sum)
}

func problem6(n: Int) {
	let a = square_of_sum(n: n)
	let b = sum_of_squares(n: n)
	
	let c = a - b
	
	print("\(a) - \(b) = \(c)")
}

problem6(n: 100)
