import Foundation

class problem59 {
    init() {}
    
    func readFile() -> [Int] {
        let url = Bundle.module.url(forResource: "Resources/cipher", withExtension: "txt")!
        let str = try! String(contentsOf: url, encoding: .utf8)
        return str.replacingOccurrences(of: "\n", with: "").split(separator:",").map({Int(String($0))!})
    }
    
    func toString(_ bytes: [Int]) -> String {
        var str = ""
        for b in bytes {
            str += String(chr(b))
        }
        return str
    }
    
    func decrypt(_ bytes: [Int], withKey:[Int]) -> [Int] {
        var decrypt: [Int] = []
        for i in 0 ... bytes.count-1 {
            let j = i % withKey.count
            decrypt.append(bytes[i] ^ withKey[j])
        }
        return decrypt
    }
    
    func run() -> Int {
        let bytes = [36,22,80,0,0,4,23,25,19,17,88,4,4,19,21,11,88,22,23,23,29,69,12,24,0,88,25,11,12,2,10,28,5,6,12,25,10,22,80,10,30,80,10,22]
        var foundKey: [Int] = []
        outerLoop:
        for a in 97 ... 122 {
            for b in 97 ... 122 {
                for c in 97 ... 122 {
                    let key = [a,b,c]
                    let decrypted = decrypt(bytes, withKey: key)
                    let decryptedStr = toString(decrypted)
                    
                    if (decryptedStr.contains(" the ")) {
                        print("key:",toString(key))
                        foundKey = key
                        break outerLoop
                    }
                }
            }
        }
        
        let text = readFile()
        let result = decrypt(text, withKey: foundKey)
        
        print(toString(result))
        
        return(array_sum(result))
    }
}
