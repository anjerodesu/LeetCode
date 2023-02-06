func isPalindrome(_ head: ListNode?) -> Bool {
    var arrayHead: [Int] = []
    var next: ListNode? = head
    while next != nil {
        arrayHead.append(next!.val)
        next = next?.next
    }
    
    for (i, num) in arrayHead.enumerated() {
        let shiftedIndex: Int = (arrayHead.count - i) - 1
        if num != arrayHead[shiftedIndex] {
            return false
        }
    }
    return true
}