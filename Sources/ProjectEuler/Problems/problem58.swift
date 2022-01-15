class problem58 {
    
    func run(maxRatio: Double) -> Int {
        var (layer, n, step) = (0, 1, 0)
        var primes: [Int] = []
        var ratio: Double = 1
        
        while (ratio > maxRatio) {
            layer += 1
            step += 2
            
            for _ in 1 ... 4 {
                n += step
                //print(n)
                if (n.isPrime) {
                    primes.append(n)
                }
            }
            
            ratio = Double(primes.count)/Double(4*layer+1)
            //print("layer",layer,"width",2*layer+1,"ratio", ratio)
        }
        return 2*layer+1
    }
}
