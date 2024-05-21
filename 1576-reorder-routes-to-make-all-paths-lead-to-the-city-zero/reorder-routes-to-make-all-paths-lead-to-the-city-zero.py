class Solution:
    def minReorder(self, n: int, connections: List[List[int]]) -> int:
        edges = { (a, b) for a, b in connections }
        neighbors = { city: [] for city in range(n) }
        visited = set()

        visited.add(0)

        res = 0

        for a, b in connections:
            neighbors[a].append(b)
            neighbors[b].append(a)
        
        def dfs(city):
          nonlocal edges, neighbors, visited, res

          for neighbor in neighbors[city]:
              if neighbor in visited:
                  continue

              if (neighbor, city) not in edges:
                  res += 1

              visited.add(neighbor)

              dfs(neighbor)

        dfs(0)

        return res