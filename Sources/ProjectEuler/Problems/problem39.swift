class problem39 {
    
    func check_right_angle(a : Int, b: Int, c: Int) -> Bool {
        return a^^2 + b^^2 == c^^2
    }

    func count_solutions(u: Int) -> Int {
        var count = 0;
        for b in 2 ... u-2 {
            var max_b = u-b-1
            if (max_b>b-1) {
                max_b = b-1
            }
            for a in 1 ... max_b {
                let c = u-a-b
                //print("\((a,b,c))")
                
                if (check_right_angle(a: a, b: b, c: c)) {
                    print("\(u): \((a,b,c))")
                    count += 1
                }
            }
        }
        return count
    }

    func run(max: Int) -> Int {
        var (max_l, max_c) = (0,0)
        for l in 6 ... max {
            let c = count_solutions(u: l)
            if (c>max_c) {
                max_c = c
                max_l = l
            }
            //print ("l: \(l) -> \(c)")
        }
        
        print ("max_l: \(max_l) -> \(max_c)")
        return max_l
    }
}
