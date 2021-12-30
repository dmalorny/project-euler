func problem15(maxX: Int, maxY: Int, x: Int, y: Int, _ routes: inout [[Int?]]) -> Int {
	if (routes[x][y] != nil) {
		return routes[x][y]!
	}
	
	if (x < maxX && y < maxY) {
        routes[x][y] = problem15(maxX: maxX, maxY: maxY, x: x+1, y: y, &routes) +
                       problem15(maxX: maxX, maxY: maxY, x: x, y: y+1, &routes)
		return routes[x][y]!
	}
	
	return 1
}

func problem15(maxX: Int, maxY: Int) -> Int {
    var routes = [[Int?]](repeating: [Int?](repeating: nil, count: maxX+1), count: maxY+1)
    return problem15(maxX: maxX, maxY: maxY, x:0, y:0, &routes)
}
