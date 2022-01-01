func number(n: Int, _ dict: [Int:String]) -> String {
	if (n<21) {
		return dict[n]!
	}
	if (n<100) {
		let e = n % 10
		let z = n - e
		return e == 0 ? dict[z]! : dict[z]! + "-" + dict[e]!
	}
	if (n<1000) {
		let z = n % 100
		let h = (n - z) / 100		
		return z == 0 ? dict[h]! + " hundred" : dict[h]! + " hundred and " + number(n: z, dict)
	}
	if (n<10000) {
		let h = n % 1000
		let t = (n - h) / 1000		
		return h == 0 ? dict[t]! + " thousand" : dict[t]! + " thousand " + number(n: h, dict)
	}
	return "--"
}

func count(s: String) -> Int {
	var str = s
	let delimiters: Set<Character> = [" ", "-"]
	str.removeAll(where: { delimiters.contains($0) })
	return str.count
}

func problem17(max: Int) -> Int {
    let dict: [Int:String] = [
        1:"one", 2:"two", 3:"three", 4:"four", 5:"five", 6:"six", 7:"seven", 8:"eight", 9:"nine", 10:"ten",
        11:"eleven", 12:"twelve", 13:"thirteen", 14:"fourteen", 15:"fifteen", 16:"sixteen", 17:"seventeen", 18:"eighteen", 19:"nineteen", 20:"twenty",
         30:"thirty", 40:"forty", 50:"fifty", 60:"sixty", 70:"seventy", 80:"eighty", 90:"ninety"
    ]
    
	var sum = 0
	for i in 1 ... max {
        let str = number(n: i, dict)
		//print(str)
		sum += count(s: str)
	}
	print("sum = \(sum)")
    return sum
}

