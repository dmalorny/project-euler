import Algorithms

func check32(_ arr: [Int], _ result: inout Set<Int>) {
	let p = fromDigits(Array(arr[0...3]))
	let a = fromDigits(Array(arr[4...6]))
	let b = fromDigits(Array(arr[7...8]))
	let c = fromDigits(Array(arr[4...7]))
	let d = fromDigits(Array(arr[8...8]))
	
	if (p == a * b) {
		print("\(p) = \(a) * \(b)")
		result.insert(p)
	}
	if (p == c * d) {
		print("\(p) = \(c) * \(d)")
		result.insert(p)
	}
}

func problem32() -> Int {
    var result: Set<Int> = []
    
    let permutations = [1,2,3,4,5,6,7,8,9].permutations()
	for permutation in permutations {
		check32(permutation, &result)
	}
	
    let sum = result.reduce(0, +)
	print(sum)
    return sum
}
