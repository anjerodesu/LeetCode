func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    guard let highest = candies.max() else { return [] }
    let result = candies.map { $0 + extraCandies >= highest }
    return result;
}
