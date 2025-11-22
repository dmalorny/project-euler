import Foundation

class problem84 {
    
    let board = ["GO", "A1", "CC", "A2", "T1", "R1", "B1", "CH", "B2", "B3",
               "JAIL", "C1", "U1", "C2", "C3", "R2", "D1", "CC", "D2", "D3",
                 "FP", "E1", "CH", "E2", "E3", "R3", "F1", "F2", "U2", "F3",
                "G2J", "G1", "G2", "CC", "G3", "R4", "CH", "H1", "T2", "H2"]
    
    let cc_cards = ["Advance to GO", "Go to JAIL", "", "", "", "", "", "", "", "", "", "", "", "", "", ""].shuffled()
    let ch_cards = ["Advance to GO", "Go to JAIL", "Go to C1", "Go to E3", "Go to H2", "Go to R1", "Go to next R", "Go to next R", "Go to next U", "Go back 3 squares", "", "", "", "", "", ""].shuffled()
    
    // current cards
    var cc = 0
    var ch = 0
    
    // current position on board
    var pos = 0
    
    // number of doubles
    var doubles = 0
    
    var probabilities: [Int:Int] = [:]
    
    func rollDice(_ d: Int) -> Int {
        let d1 = Int.random(in: 1...d)
        let d2 = Int.random(in: 1...d)
        
        if (d1 == d2) {
            doubles += 1
            if (doubles == 3) {
                doubles = 0
                goToJail() // go to jail after 3rd double
                return 0
            }
        } else {
            doubles = 0
        }
        
        return d1 + d2
    }
    
    func take_cc() -> String {
        let card = cc_cards[cc]
        cc = (cc + 1) % 16
        
        return card
    }
    
    func take_ch() -> String {
        let card = ch_cards[ch]
        ch = (ch + 1) % 16
        
        return card
    }
    
    func advance(steps: Int) -> String {
        pos = (pos + steps) % 40
        
        return board[pos]
    }
    
    func advanceToGo() {
        pos = 0
    }
    
    func goToJail() {
        pos = 10
    }
    
    func goToNextR() {
        if (pos < 5) {
            pos = 5
        } else if (pos < 15) {
            pos = 15
        } else if (pos < 25) {
            pos = 25
        } else if (pos < 35) {
            pos = 35
        } else {
            pos = 5
        }
    }
    
    func goToNextU() {
        if (pos < 12) {
            pos = 12
        } else if (pos < 28) {
            pos = 28
        } else {
            pos = 12
        }
    }
    
    func goBackThreeSquares() {
        pos = pos - 3
        if (pos < 0) {
            pos += 40
        }
    }
    
    func one_move(_ d: Int) {
        let s = rollDice(d)
        //print("roll: \(s)")
        let t = advance(steps: s)
        
        if (t == "G2J") {
            goToJail()
        }
        
        if (t == "CC" || t == "CH") {
            let card = (t == "CC" ? take_cc() : take_ch())
            
            switch card {
            case "Advance to GO":
                advanceToGo()
                break
            case "Go to JAIL":
                goToJail()
                break
            case "Go to C1":
                pos = 11
                break
            case "Go to E3":
                pos = 24
                break
            case "Go to H2":
                pos = 39
                break
            case "Go to R1":
                pos = 5
                break
            case "Go to next R":
                goToNextR()
                break
            case "Go to next U":
                goToNextU()
                break
            case "Go back 3 squares":
                goBackThreeSquares()
                break
            default:
                break;
            }
        }
        
        //print("pos: \(pos)")
        probabilities[pos] = probabilities[pos] == nil ? 1 : probabilities[pos]! + 1
    }
    
    func run(d: Int) -> String {
        let number_of_rolls = 10_000_000
                
        for _ in 1 ... number_of_rolls {
            one_move(d)
        }
        
        let sortedProbabilities = probabilities.mapValues { Double($0) * 100 / Double(number_of_rolls) }.sorted { $0.1 > $1.1 }
  
        print( sortedProbabilities[0] )
        print( sortedProbabilities[1] )
        print( sortedProbabilities[2] )
        
        return "\(String(format: "%02d", sortedProbabilities[0].key))\(String(format: "%02d", sortedProbabilities[1].key))\(String(format: "%02d", sortedProbabilities[2].key))"
    }
}
