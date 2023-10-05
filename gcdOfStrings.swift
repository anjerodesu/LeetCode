
func gcd(_ i: Int, _ j: Int) -> Int {
    return j == 0 ? i : gcd(j, i % j)
}

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    guard str1 + str2 == str2 + str1 else { return "" }

    let length = gcd(str1.count, str2.count) 
    return String(str1.prefix(length))
}

print(gcdOfStrings("ABCABC", "ABC"))
print(gcdOfStrings("ABABAB", "ABAB"))
print(gcdOfStrings("LEET", "CODE"))
print(gcdOfStrings("CODE", "LEET"))
print(gcdOfStrings("ABC", "ABCABC"))
print(gcdOfStrings("ABAB", "ABABAB"))
print(gcdOfStrings("BETEBETE", "BETE"))
print(gcdOfStrings("AABB", "AB"))
print(gcdOfStrings("ABABABAB", "ABAB"))

