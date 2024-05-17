class Solution:
    def intersection(self, nums: List[List[int]]) -> List[int]:
        mp = {}
        fp = {int: List[int]}
        for n in nums:
            for num in n:
                mp[num] = mp.get(num, 0) + 1
                f = mp[num]

                if f in fp:
                  fp[f].append(num)
                else:
                  fp[f] = [num]

        if len(nums) in fp:
          return sorted(fp[len(nums)])

        return []