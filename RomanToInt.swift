func romanToInt(_ s: String) -> Int {
    var number = 0
    var roman = 0
    
    for index in stride(from: s.count - 1, to: -1, by: -1) {
        let char = Array(s)[index]
        switch char {
        case "I":
            roman = 1
            break
        case "V":
            roman = 5
            break
        case "X":
            roman = 10
            break
        case "L":
            roman = 50
            break
        case "C":
            roman = 100
            break
        case "D":
            roman = 500
            break
        case "M":
            roman = 1000
            break
        default:
            break
        }
        if roman * 4 < number {
            number -= roman
        } else {
            number += roman
        }
    }
    return number
}