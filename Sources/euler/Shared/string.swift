// String functions
extension String {
    func substring(start: Int, length: Int) ->  String {
        let a = self.index(self.startIndex, offsetBy: start)
        let b = self.index(self.startIndex, offsetBy: start+length)
        let range = a..<b;
        
        return String(self[range])
    }
    
    func left(_ length: Int) -> String {    
        return self.substring(start: 0, length: length)
    }
    
    func right(_ length: Int) -> String {
        return self.substring(start: self.count-length, length: length)
    }
    
    func isPalindrome() -> Bool {
        return String(self.reversed()) == self
    }
    
    func isPandigital(from: Int, to: Int) -> Bool {
        if (self.count) != to-from+1 {
            return false
        }
        
        for i in from ... to {
            if (!self.contains(String(i))) {
                return false
            }
        }
        
        return true
    }
    
    var wordValue: Int {
        var value = 0
        for c in Array(self) {
            value += Int(c.asciiValue! - 64)
        }
        return value
    }
    
}
