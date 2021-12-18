func permutate(_ list: [Int]) -> [[Int]] {
	if (list.count == 2) {
		return [list.sorted(), list.reversed()]
	}
	
	var result: [[Int]] = []
	for i in 0 ... list.count-1 {
		let item = list[i]
		let rest = list.filter { $0 != item }
		
		for permute_rest in permutate(rest) {
			let combine = [item] + permute_rest
			result.append(combine)
		}
	}
	
	return result
}

func to_string(_ list: [Int]) -> String {
	var str = ""
	for item in list {
		str += String(item)
	}
	return str
}


func problem24() {
	let permutations = permutate([0,1,2,3,4,5,6,7,8,9])
	
	print(to_string(permutations[999999]))
}

problem24()
