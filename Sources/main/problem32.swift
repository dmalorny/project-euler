var result: Set<Int> = []

func to_int(_ list: [Int]) -> Int {
	var str = ""
	for item in list {
		str += String(item)
	}
	return Int(str)!
}

func check(_ arr: [Int]) {
	let p = to_int(Array(arr[0...3]))
	let a = to_int(Array(arr[4...6]))
	let b = to_int(Array(arr[7...8]))
	let c = to_int(Array(arr[4...7]))
	let d = to_int(Array(arr[8...8]))
	
	if (p == a * b) {
		print("\(p) = \(a) * \(b)")
		result.insert(p)
	}
	if (p == c * d) {
		print("\(p) = \(c) * \(d)")
		result.insert(p)
	}
}

func problem32() {
	let permutations = permutate([1,2,3,4,5,6,7,8,9])
	for permutation in permutations {
		check(permutation)
	}
	
	print(result.reduce(0, +))
}
