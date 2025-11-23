import Foundation

class problem86 {
    
    func combinations(_ a: Int, _ bc: Int) -> Int {
        if (2 * a < bc) { return 0 }
        else if (a >= bc) { return bc / 2 }
        else if (bc % 2 == 0) { return a + 1 - (bc / 2) }
        else { return a - ((bc - 1) / 2) }
    }
    
    func run(N: Int) -> Int {
        let limit = 10_000
        var triples = Array(repeating: 0, count: limit + 1)

        for m in 1 ... Int(Double(2 * limit).squareRoot()) {

            for n in 1 ..< m {
                if (m + n) % 2 == 1 && gcd(m, n) == 1 {

                    let b = m * m - n * n
                    let c = 2 * m * n

                    if b != 0 {
                        let maxK = limit / b
                        if maxK > 0 {
                            for k in 1 ... maxK {
                                triples[k * b] += combinations(k * b, k * c)
                            }
                        }
                    }

                    if c != 0 {
                        let maxK = limit / c
                        if maxK > 0 {
                            for k in 1 ... maxK {
                                triples[k * c] += combinations(k * c, k * b)
                            }
                        }
                    }
                }
            }
        }

        var total = 0
        for (x, value) in triples.enumerated() {
            total += value
            if total > N {
                return x
            }
        }
        return -1
    }
    
    
}
