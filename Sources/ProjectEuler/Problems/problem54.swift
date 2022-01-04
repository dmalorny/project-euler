import Foundation

func cardValue(card: String) -> (value: Int, suit: Int) {
    let valueDict: [Character:Int] = ["2":2, "3":3, "4":4, "5":5, "6":6, "7":7, "8":8, "9":9, "T":10, "J":11, "Q":12, "K":13, "A":14]
    let suitDict:  [Character:Int] = ["D":1, "H":2, "S":3, "C":4]
    
    let a = Array(card)
    return (value: valueDict[a[0]]!, suit: suitDict[a[1]]!)
}

func groupByValue(cards: [String]) -> [Int:Int] {
    var group: [Int:Int] = [:]
    for card in cards {
        let cv = cardValue(card: card)
        group[cv.value] = group[cv.value] != nil ? group[cv.value]! + 1 : 1
    }
    return group
}

func groupBySuit(cards: [String]) -> [Int:Int] {
    var group: [Int:Int] = [:]
    for card in cards {
        let cv = cardValue(card: card)
        group[cv.suit] = group[cv.suit] != nil ? group[cv.suit]! + 1 : 1
    }
    return group
}

func isPair(valuegroups: [Int:Int]) -> Int? {
    for group in valuegroups {
        if (group.value == 2) {
            return group.key
        }
    }
    return nil
}

func isThreeOfAKind(valuegroups: [Int:Int]) -> Int? {
    for group in valuegroups {
        if (group.value == 3) {
            return group.key
        }
    }
    return nil
}

func isFourOfAKind(valuegroups: [Int:Int]) -> Int? {
    for group in valuegroups {
        if (group.value == 4) {
            return group.key
        }
    }
    return nil
}

func isTwoPairs(valuegroups: [Int:Int]) -> Int? {
    var count = 0
    var higestPair = 0
    for group in valuegroups {
        if (group.value == 2) {
            count += 1
            if (group.key>higestPair) {
                higestPair = group.key
            }
        }
    }
    return count == 2 ? higestPair : nil
}

func isFullHouse(valuegroups: [Int:Int]) -> Int? {
    let pair = isPair(valuegroups: valuegroups)
    let triple = isThreeOfAKind(valuegroups: valuegroups)
    return (pair != nil && triple != nil) ? triple : nil
}

func isStraight(valuegroups: [Int:Int]) -> Int? {
    let keys = valuegroups.keys.sorted()
    
    if (keys.count == 5 && keys[4]-keys[0] == 4) {
        return keys[4]
    }
    return nil
}

func isFlush(suitgroups: [Int:Int]) -> Int? {
    let keys = suitgroups.keys.sorted()
    
    if (keys.count == 1) {
        return keys[0]
    }
    return nil
}

func isStraightFlush(valuegroups: [Int:Int], suitgroups: [Int:Int]) -> Int? {
    let straight = isStraight(valuegroups: valuegroups)
    let flush = isFlush(suitgroups: suitgroups)
    return (straight != nil && flush != nil) ? straight : nil
}

func isRoyalFlush(valuegroups: [Int:Int], suitgroups: [Int:Int]) -> Int? {
    let straight = isStraight(valuegroups: valuegroups)
    let flush = isFlush(suitgroups: suitgroups)
    return (straight == 14 && flush != nil) ? flush : nil
}


func rankHand(hand: String) -> (rank: Int, highest: Int, cardvalues: [Int]) {
    let cards = hand.split(separator: " ").sorted().map({String($0)})
    let valuegroups = groupByValue(cards: cards)
    let suitgroups = groupBySuit(cards: cards)
    let cardValues = cards.map({cardValue(card: $0).value}).sorted(by: >)
    
    let isPair = isPair(valuegroups: valuegroups)
    let isThreeOfAKind = isThreeOfAKind(valuegroups: valuegroups)
    let isFourOfAKind = isFourOfAKind(valuegroups: valuegroups)
    let isTwoPairs = isTwoPairs(valuegroups: valuegroups)
    let isFullHouse = isFullHouse(valuegroups: valuegroups)
    let isStraight = isStraight(valuegroups: valuegroups)
    let isFlush = isFlush(suitgroups: suitgroups)
    let isStraightFlush = isStraightFlush(valuegroups: valuegroups, suitgroups: suitgroups)
    let isRoyalFlush = isRoyalFlush(valuegroups: valuegroups, suitgroups: suitgroups)

    if (isRoyalFlush != nil) {
        return (rank: 9, highest: isRoyalFlush!, cardvalues: cardValues)
    }
    if (isStraightFlush != nil) {
        return (rank: 8, highest: isStraightFlush!, cardvalues: cardValues)
    }
    if (isFourOfAKind != nil) {
        return (rank: 7, highest: isFourOfAKind!, cardvalues: cardValues)
    }
    if (isFullHouse != nil) {
        return (rank: 6, highest: isFullHouse!, cardvalues: cardValues)
    }
    if (isFlush != nil) {
        return (rank: 5, highest: isFlush!, cardvalues: cardValues)
    }
    if (isStraight != nil) {
        return (rank: 4, highest: isStraight!, cardvalues: cardValues)
    }
    if (isThreeOfAKind != nil) {
        return (rank: 3, highest: isThreeOfAKind!, cardvalues: cardValues)
    }
    if (isTwoPairs != nil) {
        return (rank: 2, highest: isTwoPairs!, cardvalues: cardValues)
    }
    if (isPair != nil) {
        return (rank: 1, highest: isPair!, cardvalues: cardValues)
    }
    
    return (rank: 0, highest: 0, cardvalues: cardValues)
}

func problem54(player1: String, player2: String) -> Bool {
    let hand1 = rankHand(hand: player1)
    let hand2 = rankHand(hand: player2)
   
    print("1: \(hand1.rank),\(hand1.highest),\(hand1.cardvalues), 2: \(hand2.rank),\(hand2.highest),\(hand2.cardvalues)")
    
    if (hand1.rank > hand2.rank) {
        return true // player 1 wins
    } else if (hand1.rank < hand2.rank) {
        return false // player 2 wins
    }
    
    if (hand1.highest > hand2.highest) {
        return true // player 1 wins
    } else if (hand1.highest < hand2.highest) {
        return false // player 2 wins
    }

    // compare values
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

func problem54() -> Int {
    let url = Bundle.module.url(forResource: "Resources/poker", withExtension: "txt")!
    let str = try! String(contentsOf: url, encoding: .utf8)
    let lines = str.split(separator:"\n")
    
    var i = 0
    var count = 0
    for line in lines {
        i += 1
        let hand1 = String(line).left(14)
        let hand2 = String(line).right(14)
        
        if (problem54(player1: hand1, player2: hand2)) {
            count += 1
        }
    }
    
    return count
}
