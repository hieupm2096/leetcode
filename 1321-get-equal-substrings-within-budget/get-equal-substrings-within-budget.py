class Solution:
    def equalSubstring(self, s: str, t: str, maxCost: int) -> int:
        arr = []
        hasRes = False

        n = len(s)
        for i in range(n):
            temp = abs(ord(s[i]) - ord(t[i]))
            arr.append(temp)

            if temp <= maxCost:
                hasRes = True
        
        if not hasRes:
            return 0

        l = 0
        r = 0
        res = 0
        sum = 0

        while r < n:
            sum += arr[r]

            if sum <= maxCost:
                res = max(res, r - l + 1)
            else:
                while sum > maxCost and l <= r:
                    sum -= arr[l]
                    l += 1
            r += 1
        
        return res