func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var mags = magazine
    for char in ransomNote.enumerated() {
        guard let magsIndex: String.Index = mags.firstIndex(of: char.element) else { return false }
        mags.remove(at: magsIndex)
    }
    
    return true
}