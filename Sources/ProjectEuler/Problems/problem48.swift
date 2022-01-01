import BigInt

func problem48(max: Int) -> String {
    var sum: BigUInt = 0
    for i in 1 ... max {
        sum += BigUInt(i).power(i)
    }
    
    return String(sum).right(10)
}
