class problem61 {
    
    var solution: [Int] =  Array(repeating: 0, count: 6)
    var numbers: [[Int]] = Array(repeating: [], count: 6)
    
    init() {
        var triangles: [Int] = []
        var squares: [Int] = []
        var pentagonals: [Int] = []
        var hexagonals: [Int] = []
        var heptagonals: [Int] = []
        var octagonals: [Int] = []
        
        for i in 1 ... 200 {
            triangles.append(triangle(i))
            squares.append(square(i))
            pentagonals.append(pentagonal(i))
            hexagonals.append(hexagonal(i))
            heptagonals.append(heptagonal(i))
            octagonals.append(octagonal(i))
        }
        
        numbers[0] = triangles.filter({$0 > 999 && $0 < 10000})
        numbers[1] = squares.filter({$0 > 999 && $0 < 10000})
        numbers[2] = pentagonals.filter({$0 > 999 && $0 < 10000})
        numbers[3] = hexagonals.filter({$0 > 999 && $0 < 10000})
        numbers[4] = heptagonals.filter({$0 > 999 && $0 < 10000})
        numbers[5] = octagonals.filter({$0 > 999 && $0 < 10000})
    }
    
    func match(_ a: Int, _ b: Int) -> Bool {
        return a / 100 == b % 100
    }
    
    func findNext(_ last: Int, _ length: Int) -> Bool {
        for i in 0 ... solution.count-1 {
            if (solution[i] != 0) {
                continue;
            }
            for j in 0 ... numbers[i].count-1 {

                var unique = true;
                for k in 0 ... solution.count-1 {
                    if (numbers[i][j] == solution[k]) {
                        unique = false;
                        break;
                    }
                }
                                        
                if (unique &&  match(numbers[i][j],solution[last])) {
                    solution[i] = numbers[i][j];
                    if (length == 5) {
                        if (match(solution[5],solution[i])) {
                            return true;
                        }
                    }
                    if (findNext(i, length + 1)) {
                        return true;
                    }
                }
            }
            solution[i] = 0;
        }
        return false;
    }
    
    func run() -> Int {
        for i in 0 ... numbers[5].count-1 {
            solution[5] = numbers[5][i];
            if (findNext(5, 1)) {
                break;
            }
        }
        print("solution", solution)
        return array_sum(solution);
    }
}
