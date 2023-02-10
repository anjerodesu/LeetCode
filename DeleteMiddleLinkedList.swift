func deleteMiddle(_ head: ListNode?) -> ListNode? {
    var arrayHead: [Int] = []
    var next: ListNode? = head
    while next != nil {
        arrayHead.append(next!.val)
        next = next?.next
    }
    
    let halfD: Double = Double(arrayHead.count / 2)
    let half: Int = Int(halfD.rounded(.up))
    var nodey: ListNode?
    for i in stride(from: (arrayHead.count - 1), through: 0, by: -1) {
        guard i != half else { continue }
        
        if nodey == nil {
            nodey = ListNode(arrayHead[i])
        } else {
            nodey = ListNode(arrayHead[i], nodey)
        }
    }
    
    return nodey
}