import Algorithms

func to_string(_ list: [Int]) -> String {
	var str = ""
	for item in list {
		str += String(item)
	}
	return str
}

func problem24() {
    let permutations = [0,1,2,3,4,5,6,7,8,9].permutations()
    let millionth_item = permutations.striding(by: 999999).dropFirst().firstNonNil({$0})!
    
    print(to_string(millionth_item))
}
