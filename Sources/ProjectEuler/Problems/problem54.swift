import Foundation

class problem54 {
    
    func cardValue(card: String) -> (value: Int, suit: Int) {
        let valueDict: [Character:Int] = ["2":2, "3":3, "4":4, "5":5, "6":6, "7":7, "8":8, "9":9, "T":10, "J":11, "Q":12, "K":13, "A":14]
        let suitDict:  [Character:Int] = ["D":1, "H":2, "S":3, "C":4]
        
        let a = Array(card)
        return (value: valueDict[a[0]]!, suit: suitDict[a[1]]!)
    }

    func groupByValueAndSuit(cards: [String]) -> ([Int:Int], [Int:Int]) {
        var valuegroup: [Int:Int] = [:]
        var suitgroup: [Int:Int] = [:]
        for card in cards {
            let cv = cardValue(card: card)
            valuegroup[cv.value] = valuegroup[cv.value] != nil ? valuegroup[cv.value]! + 1 : 1
            suitgroup[cv.suit] = suitgroup[cv.suit] != nil ? suitgroup[cv.suit]! + 1 : 1
        }
        return (valuegroup, suitgroup)
    }

    func pair(valuegroups: [Int:Int]) -> Int? {
        for group in valuegroups {
            if (group.value == 2) {
                return 100 + group.key
            }
        }
        return nil
    }

    func threeOfAKind(valuegroups: [Int:Int]) -> Int? {
        for group in valuegroups {
            if (group.value == 3) {
                return 300 + group.key
            }
        }
        return nil
    }

    func fourOfAKind(valuegroups: [Int:Int]) -> Int? {
        for group in valuegroups {
            if (group.value == 4) {
                return 700 + group.key
            }
        }
        return nil
    }

    func twoPairs(valuegroups: [Int:Int]) -> Int? {
        var count = 0
        var highestPair = 0
        for group in valuegroups {
            if (group.value == 2) {
                count += 1
                if (group.key>highestPair) {
                    highestPair = group.key
                }
            }
        }
        return count == 2 ? 200 + highestPair : nil
    }

    func fullHouse(valuegroups: [Int:Int]) -> Int? {
        let pair = pair(valuegroups: valuegroups)
        let triple = threeOfAKind(valuegroups: valuegroups)
        return (pair != nil && triple != nil) ? 600 + triple! : nil
    }

    func straight(valuegroups: [Int:Int]) -> Int? {
        let keys = valuegroups.keys.sorted()
        
        if (keys.count == 5 && keys[4]-keys[0] == 4) {
            return 400 + keys[4]
        }
        return nil
    }

    func flush(suitgroups: [Int:Int]) -> Int? {
        let keys = suitgroups.keys.sorted()
        
        if (keys.count == 1) {
            return 500 + keys[0]
        }
        return nil
    }

    func straightFlush(valuegroups: [Int:Int], suitgroups: [Int:Int]) -> Int? {
        let straight = straight(valuegroups: valuegroups)
        let flush = flush(suitgroups: suitgroups)
        return (straight != nil && flush != nil) ? 800 + straight! : nil
    }

    func royalFlush(valuegroups: [Int:Int], suitgroups: [Int:Int]) -> Int? {
        let straight = straight(valuegroups: valuegroups)
        let flush = flush(suitgroups: suitgroups)
        return (straight == 14 && flush != nil) ? 900 + flush! : nil
    }


    func rankHand(hand: String) -> (rank: Int, cardvalues: [Int]) {
        let cards = hand.split(separator: " ").sorted().map({String($0)})
        let (valuegroups, suitgroups) = groupByValueAndSuit(cards: cards)
        let cardValues = cards.map({cardValue(card: $0).value}).sorted(by: >)
        
        let pair: Int? = pair(valuegroups: valuegroups)
        let threeOfAKind: Int? = threeOfAKind(valuegroups: valuegroups)
        let fourOfAKind: Int? = fourOfAKind(valuegroups: valuegroups)
        let twoPairs: Int? = twoPairs(valuegroups: valuegroups)
        let fullHouse: Int? = fullHouse(valuegroups: valuegroups)
        let straight: Int? = straight(valuegroups: valuegroups)
        let flush: Int? = flush(suitgroups: suitgroups)
        let straightFlush: Int? = straightFlush(valuegroups: valuegroups, suitgroups: suitgroups)
        let royalFlush: Int? = royalFlush(valuegroups: valuegroups, suitgroups: suitgroups)

        let lowerRank = straight ?? threeOfAKind ?? twoPairs ?? pair ?? 0
        let rank = royalFlush ?? straightFlush ?? fourOfAKind ?? fullHouse ?? flush ?? lowerRank
        
        return (rank: rank, cardvalues: cardValues)
    }

    func run(player1: String, player2: String) -> Bool {
        let hand1 = rankHand(hand: player1)
        let hand2 = rankHand(hand: player2)
       
        //print("1: \(player1)\t\(hand1.rank)\t\(hand1.cardvalues)\t\t2: \(player2)\t\(hand2.rank)\t\(hand2.cardvalues)")

        if (hand1.rank > hand2.rank) {
            return true // player 1 wins
        } else if (hand1.rank < hand2.rank) {
            return false // player 2 wins
        }

        // compare card values
        for i in 0 ... 4 {
            if (hand1.cardvalues[i] > hand2.cardvalues[i]) {
                return true // Player 1 wins
            }
            if (hand1.cardvalues[i] < hand2.cardvalues[i]) {
                return false // Player 2 wins
            }
        }
        
        return false // player 2 wins
    }

    func run() -> Int {
        let url = Bundle.module.url(forResource: "Resources/poker", withExtension: "txt")!
        let str = try! String(contentsOf: url, encoding: .utf8)
        let lines = str.split(separator:"\n")
        
        var i = 0
        var count = 0
        for line in lines {
            i += 1
            let hand1 = String(line).left(14)
            let hand2 = String(line).right(14)
            
            if (run(player1: hand1, player2: hand2)) {
                count += 1
            }
        }
        
        return count
    }
}
