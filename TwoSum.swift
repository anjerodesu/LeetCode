func twoSum(_ nums: [Int], target: Int) -> [Int] {
    var indices: [Int] = []
    
    for index1 in 0..<nums.count {
        guard indices.count < 2 else { break }
        
        let num1 = nums[index1]
        for index2 in 0..<nums.count {
            guard index1 != index2 else { continue }
            
            let num2 = nums[index2]
            if num1 + num2 == target {
                indices.append(index1)
                indices.append(index2)
                break
            }
        }
    }
    
    return indices
}