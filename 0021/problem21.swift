func divisors(_ n: Int) -> [Int] {
    var divisors = [Int]()
    for i in 1 ... Int(Double(n).squareRoot()) {
        if (n % i == 0) {
            if (n / i == i) {
            	divisors.append(i)
            } else {
                divisors.append(i)
                divisors.append(n/i)
            }
        }
    }
    divisors.sort()
    return divisors;
}

func sum(_ arr: [Int]) -> Int {
	return arr.reduce(0, +)
}

func is_amicable(_ n: Int) -> Bool {
	let a = sum(divisors(n))-n
	let b = sum(divisors(a))-a

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

problem21()