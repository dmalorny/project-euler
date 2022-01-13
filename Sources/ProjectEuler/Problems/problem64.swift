class problem64 {
    init() {}
    
    func period_length(_ n: Int) -> Int {
        var (a_0, b_0, c_0, a, b, c, result) = (0,0,0,0,0,0,0);

        a_0 = Int(Double(n).squareRoot());
        b_0 = a_0;
        c_0 = (n - a_0*a_0);
        c = c_0;
        b = b_0;
        
        while (result == 0 || b != b_0 || c != c_0) {
            //print("* ",a,b,c)
            a = (a_0+b)/c;
            b = a*c-b;
            c = (n-b*b)/c;
            result+=1;
        }
        
        return result;
    }
    
    func run(N: Int) -> Int {
        var count = 0
        
        for n in 1 ... N {
            if (isSquare(n)) {
                continue
            }
            
            let pl = period_length(n)
            //print(n,pl)
            if (pl.isOdd) {
                count += 1
            }
        }
        
        return count
    }
}
