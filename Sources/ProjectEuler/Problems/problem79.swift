import Foundation

class problem79 {
    init() {}
    
    func readKeyLogFile() -> [Int] {
        var res: Array<Int> = []
        let url = Bundle.module.url(forResource: "Resources/keylog", withExtension: "txt")!
        let str = try! String(contentsOf: url, encoding: .utf8)
        
        for s in str.split(separator:"\n") {
            res.append(Int(s)!)
        }
        return res
    }

    func check(permutation: [Int], keylog: [Int]) -> Bool {
        
        for keylogEntry in keylog {
            let key = digits(keylogEntry)
            var keyindex = 0
            
            for n in permutation {
                if (key[keyindex] == n) {
                    keyindex += 1
                }
                if (keyindex == 3) {
                    break
                }
            }
            if (keyindex < 3) {
                return false
            }
            //print(permutation, key)
        }
        
        return true
    }

    func run() -> Int {
        let keylog = readKeyLogFile()
        print(keylog)
        let permutations = [1,2,3,6,7,8,9,0].permutations()
        for permutation in permutations {
            let allfound = check(permutation: permutation, keylog: keylog)
            if (allfound) {
                return fromDigits(permutation)
            }
        }
        
        return 0
    }
}
