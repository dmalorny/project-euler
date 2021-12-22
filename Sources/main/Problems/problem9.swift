func problem9(sum: Int) {
    for c in 1 ... sum {
        for b in 1 ... c {
            let a = sum - b - c
            if (a<1) {
                continue 
            }
            if (square(a)+square(b) == square(c)) {
                print("\(a)^2 + \(b)^2 = \(c)^2");
                print("a + b + c = \(sum)");
                print("a * b * c = \(a*b*c)");
                print()
            }
        }
    }
}
