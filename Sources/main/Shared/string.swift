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
}
