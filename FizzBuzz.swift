func fizzBuzz(_ n: Int) -> [String] {
    var fizzy: [String] = []
    
    for i in 1...n {
        if i % 5 == 0 && i % 3 == 0 {
            fizzy.append("FizzBuzz")
        } else if i % 5 == 0 {
            fizzy.append("Buzz")
        } else if i % 3 == 0 {
            fizzy.append("Fizz")
        } else {
            fizzy.append(String(i))
        }
    }
    
    return fizzy
}