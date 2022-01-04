class problem31 {
    init() {}
    
    func sum(p200: Int, p100: Int, p50: Int, p20: Int, p10: Int, p5: Int, p2: Int, p1: Int) -> Int {
        return p200*200 + p100*100 + p50*50 + p20*20 + p10*10 + p5*5 + p2*2 + p1*1
    }

    func run(value: Int) -> Int {
        var count = 0
        for a in 0 ... 1 {
            for b in 0 ... 2 {
                for c in 0 ... 4 {
                    for d in 0 ... 10 {
                        for e in 0 ... 20 {
                            for f in 0 ... 40 {
                                for g in 0 ... 100 {
                                    let sum = sum(p200: a, p100: b, p50: c, p20: d, p10: e, p5: f, p2: g, p1: 0)
                                    if (sum > value) {
                                        break
                                    }
                                    //let h = value - sum
                                    //print("\(a)×2£, \(b)×1£, \(c)×50p, \(d)×20p, \(e)×10p, \(f)×5p, \(g)×2p, \(h)×1p")
                                    count += 1
                                }
                            }
                        }
                    }
                }
            }
        }
        
        print(count)
        return count
    }
}
