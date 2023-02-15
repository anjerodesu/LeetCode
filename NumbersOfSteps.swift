func numbersOfSteps(_ num: Int) -> Int {
    var k = 0
    var i = num
    while i > 0 {
        if i % 2 == 0 {
            i /= 2
        } else {
            i -= 1
        }
        k += 1
    }
    return k
}
