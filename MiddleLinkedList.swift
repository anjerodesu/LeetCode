func middleNode(_ head: ListNode?) -> ListNode? {
    var arrayHead: [Int] = []
    var next: ListNode? = head
    while next != nil {
        arrayHead.append(next!.val)
        next = next?.next
    }
    
    let half: Int = arrayHead.count / 2
    var nodey: ListNode?
    for i in stride(from: (arrayHead.count - 1), through: half, by: -1) {
        if nodey == nil {
            nodey = ListNode(arrayHead[i])
        } else {
            nodey = ListNode(arrayHead[i], nodey)
        }
    }
    
    return nodey
}
