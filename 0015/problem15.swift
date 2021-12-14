var maxX = 20
var maxY = 20

var routes = [[Int?]](repeating: [Int?](repeating: nil, count: maxX+1), count: maxY+1)

func problem15(x: Int, y: Int) -> Int {
	if (routes[x][y] != nil) {
		return routes[x][y]!
	}
	
	if (x < maxX && y < maxY) {
		routes[x][y] = problem15(x: x+1, y: y) + problem15(x: x, y: y+1)
		return routes[x][y]!
	}
	
	return 1
}

print(problem15(x:0, y:0))
