var arr = [1] 

func double() {
	var overflow = 0
	for i in 0 ... arr.count-1 {
		var digit = 2 * arr[i] + overflow
		overflow = 0
		if (digit > 9) {
			overflow = 1
			digit = digit % 10
			if (i == arr.count-1) {
				arr.append(overflow)
			}
		} 
		arr[i] = digit
	}
}


func problem16(n: Int) {
	for _ in 1 ... n {
		double()
		print ("\(arr)")
	}
	var sum = 0
	for i in arr {
		sum += i
	}
	print ("sum: \(sum)")
}
