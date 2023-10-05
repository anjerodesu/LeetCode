func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var word1b = word1
    var word2b = word2
    let words = "\(word1b.first!)\(word2b.first!)"
    word1b.removeFirst()
    word2b.removeFirst()
    if (word1b.count > 0 && word2b.count > 0) {
        return words + mergeAlternately(word1b, word2b)
    } else if word1b.count > 0 {
        return words + word1b
    } else if word2b.count > 0 {
        return words + word2b
    } else {
        return words
    }
}

print(mergeAlternately("abc", "pqr"))
print(mergeAlternately("ab", "pqrs"))
print(mergeAlternately("abcd", "pq"))
