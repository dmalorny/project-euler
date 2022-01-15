import Algorithms

class problem24 {
    
    func to_string(_ list: [Int]) -> String {
        var str = ""
        for item in list {
            str += String(item)
        }
        return str
    }

    func run(p: Int, n: Int) -> Int{
        let set = Array(stride(from: 0, to: p+1, by: 1))
        print (set)
        let permutations = set.permutations()
        let millionth_item = permutations.striding(by: (n-1)).dropFirst().firstNonNil({$0})!
        
        let result = to_string(millionth_item)
        return Int(result)!
    }
}
