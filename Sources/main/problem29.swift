import BigInt

func problem29(_ limit: Int) {
	var results: Set<BigInt> = []
	for a: BigInt in 2 ... BigInt(limit) {
		for b: Int in 2 ... limit {
			let c = a.power(b)
			results.insert(c)
		}
	}
	print(results.count)
}
