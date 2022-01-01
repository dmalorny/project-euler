import Foundation

func triangle_numbers(count: Int) -> [Int] {
    var triangle_numbers: Array<Int> = []
    for n in 1 ... count {
        triangle_numbers.append(Int(Double(n)/2.0 * (Double(n)+1)))
    }
    return triangle_numbers
}

func problem42() -> Int {
    let triangle_numbers = triangle_numbers(count: 30)
    
    let url = Bundle.module.url(forResource: "Resources/words", withExtension: "txt")!
    var str = try! String(contentsOf: url, encoding: .utf8)

    str.removeAll(where: { ["\""].contains($0) })
    let words = str.split(separator:",")

    var count = 0
    for word in words {
        let value = String(word).wordValue
        if (triangle_numbers.contains(value)) {
            count += 1
            //print("\(word): \(value)")
        }
    }

    print("count: \(count)")
    return count
}
