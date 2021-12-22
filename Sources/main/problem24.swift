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

