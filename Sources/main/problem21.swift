func is_amicable(_ n: Int) -> Bool {
	let a = array_sum(divisors(n))-n
	let b = array_sum(divisors(a))-a

	return (b == n && a != b)
}

func problem21() {
	var sum = 0;
	for i in 2 ... 10000 {
		if (is_amicable(i)) {
			sum += i
			print(i)
		} 
	}
	print("sum = \(sum)")
}

