class Solution:
    def calPoints(self, operations: List[str]) -> int:
        stack = []

        for op in operations:
            if (len(stack) == 0):
                stack.append(int(op))
                continue

            if op == 'C':
                stack.pop()
            elif op == 'D':
                t = stack[len(stack) - 1]
                stack.append(t * 2)
            elif op == '+':
                t = stack.pop()
                s = t + stack[len(stack) - 1]
                stack.append(t)
                stack.append(s)
            else:
                stack.append(int(op))

        return sum(stack)