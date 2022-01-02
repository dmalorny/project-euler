import Foundation

func readKeyLogFile() -> [Int] {
    var res: Array<Int> = []
    let url = Bundle.module.url(forResource: "Resources/keylog", withExtension: "txt")!
    let str = try! String(contentsOf: url, encoding: .utf8)
    
    for s in str.split(separator:"\n") {
        res.append(Int(s)!)
    }
    return res
}

func check79(permutation: [Int], keylog: [Int]) -> Bool {
    
    var i = 0
    for keylogEntry in keylog {
        i += 1
        let key = digits(keylogEntry)
        //print(permutation, key)
        var keyindex = 0
        
        for p in permutation {
            if (key[keyindex] == p) {
                keyindex += 1
            } else {
                continue
            }
            if (keyindex == 2) {
                break
            }
        }
        if (keyindex < 2) {
            return false
        }
        //print(permutation, key, i)
    }
    
    return true
}

func problem79() -> Int {
    let keylog = readKeyLogFile()
    print(keylog)
    let permutations = [1,2,3,6,7,8,9,0].permutations()
    for permutation in permutations {
        let allfound = check79(permutation: permutation, keylog: keylog)
        if (allfound) {
            return fromDigits(permutation)
        }
    }
    
    return 0
}

