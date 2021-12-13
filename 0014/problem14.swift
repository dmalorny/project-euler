func collatz(n: Int) -> [Int] {
	if (n == 1) {
		return [1];
	}
	
	if (n % 2 == 0) {
		let next = n/2
		return [n] + collatz(n: next)
	}
	
	let next = 3*n + 1
	return [n] + collatz(n: next)
}

func problem14(n: Int) {
	var max_length = 0
	var start = 0
	for i in 1 ... n {
		let res = collatz(n: i)
		let len = res.count
    	print("\(i) -> \(len)")
    	
    	if (len > max_length) {
    		max_length = len
    		start = i
       	}
    	
	}
	print("max: \(max_length), start: \(start)")
 }

problem14(n: 1000000);