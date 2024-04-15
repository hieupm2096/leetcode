func majorityElement(nums []int) int {
    m := make(map[int]int)
    for i := 0; i < len(nums); i++ {
        if _, ok := m[nums[i]]; ok {
            m[nums[i]] += 1
        } else {
            m[nums[i]] = 1
        }

        if m[nums[i]] > len(nums) / 2 {
            return nums[i]
        }
    }

    return nums[0]
}