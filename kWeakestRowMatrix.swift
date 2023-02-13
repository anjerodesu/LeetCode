func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
    let mxn = mat.compactMap { $0.reduce(0, +) }
    var sortedMxn = mxn.enumerated().sorted { $0.element < $1.element }.map { $0.offset }
    sortedMxn.removeLast(sortedMxn.count - k)
    return sortedMxn
}
