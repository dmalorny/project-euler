import Foundation

class problem91 {
    
    func isRight(x1: Int, y1: Int,x2: Int,y2: Int) -> Bool {
        let a = square(x1) + square(y1)
        let b = square(x2) + square(y2)
        let c = square(x2-x1) + square(y2-y1)
        
        return (a+b == c || a+c==b || c+b==a)
    }
    
    func run(n: Int) -> Int {
        var i = 0;
        
        for x1 in 0...n {
            for y1 in 0...n {
                for x2 in 0...n {
                    for y2 in 0...n {
                        if (x1==0 && y1==0) {continue}
                        if (x2==0 && y2==0) {continue}
                        if (x1==x2 && y1==y2) {continue}
                        
                        if (isRight(x1: x1, y1: y1, x2: x2, y2: y2))  {
                            //print(x1,y1,x2,y2)
                            i+=1
                        }
                    }
                }
            }
        }
        
        return i / 2
    }
}
