class problem72 {
    
    var resultset: Set<String> = []
    
    func run(maxD: Int) -> Int {
    
        var phi: [Int] = stride(from: 0, to: maxD+1, by: 1).sorted()
        var result = 0;
        
        for i in 2 ... maxD {
            if (phi[i] == i) {
                for j in stride(from: i, to: maxD+1, by: i) {
                    phi[j] = phi[j] / i * (i - 1);
                }
            }
            result += phi[i];
        }
        
        return result
    }
}
