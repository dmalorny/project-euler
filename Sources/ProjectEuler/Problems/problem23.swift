class problem23 {
    init() {}
    
    func is_abudant(_ n: Int) -> Bool {
        let a = array_sum(divisors(n))-n
        return (a > n)
    }

    func list_of_abudant(_ maximum: Int) -> [Int] {
        var list = [Int]()
        for i in 1 ... maximum {
            if (is_abudant(i)) {
                list.append(i)
            }
        }
        return list
    }

    func run(_ maximum: Int) -> Int {
        let abudants = list_of_abudant(maximum)
        
        var all : Set<Int> = []
        
        for i in 1 ... maximum {
            all.insert(i)
        }
        
        for a in abudants {
            //print(a)
            for b in abudants {
                let c = a+b
                if (c<=maximum) {
                    all.remove(c)
                }
            }
        }
        
        let sum = array_sum(Array(all))
        print("sum = \(sum)")
        return sum
    }
}
