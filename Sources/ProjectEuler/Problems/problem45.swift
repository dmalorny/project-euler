class problem45 {
    
    func run() -> Int {
        var i = 285;
         
        while (true) {
            i += 1;
            let t = triangle(i);
         
            if (isPentagonal(t) && isHexagonal(t)) {
                return t
            }
        }
    }
}
