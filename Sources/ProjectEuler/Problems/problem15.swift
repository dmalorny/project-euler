class problem15 {
    
    var routes: [[Int?]] = []
    
    func run(maxX: Int, maxY: Int, x: Int, y: Int) -> Int {
        if (routes[x][y] != nil) {
            return routes[x][y]!
        }
        
        if (x < maxX && y < maxY) {
            routes[x][y] = run(maxX: maxX, maxY: maxY, x: x+1, y: y) +
                           run(maxX: maxX, maxY: maxY, x: x, y: y+1)
            return routes[x][y]!
        }
        
        return 1
    }

    func run(maxX: Int, maxY: Int) -> Int {
        routes = [[Int?]](repeating: [Int?](repeating: nil, count: maxX+1), count: maxY+1)
        return run(maxX: maxX, maxY: maxY, x:0, y:0)
    }
}
