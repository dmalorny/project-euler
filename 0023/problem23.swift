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

func is_abudant(_ n: Int) -> Bool {
	let a = sum(divisors(n))-n
	return (a > n)
}

func list_of_abudant(_ maximum: Int) -> [Int] {
	var list = [Int]()
	for i in 1 ... maximum {
		if (is_abudant(i)) {
			list.append(i)
		}
	}
	return list
}

func problem23(_ maximum: Int) {
	let abudants = list_of_abudant(maximum)
	
	var all : Set<Int> = []
	
	for i in 1 ... maximum {
		all.insert(i)
	}
	
	for a in abudants {
		print(a)
		for b in abudants {
			let c = a+b
			if (c<=maximum) {
				all.remove(c)
			}
		}
	}
	
	let sum = sum(Array(all))
 	print("sum = \(sum)") 

}

problem23(28123)