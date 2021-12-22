func factor(n: Int) -> Set<Int> {
	var factors = Set<Int>()
	
	for f in 1...n {
		if (n % f == 0) {
			factors.insert(f);
		}
	}
    
    return factors
}

func countDivisors(n: Int) -> Int
{
    var cnt = 0;
    for i in 1 ... Int(Double(n).squareRoot()) {
        if (n % i == 0) {
            if (n / i == i) {
            	cnt += 1;
            } else {
                cnt += 2;
            }
        }
    }
    return cnt;
}

func problem12(n: Int) {
	var i = 1
	var divisors = 0
	var triangle_num = 0
	
	while (divisors <= n) {
		triangle_num += i
		i += 1
		divisors = countDivisors(n: triangle_num);
		print ("\(triangle_num): \(divisors)");
	}
}
