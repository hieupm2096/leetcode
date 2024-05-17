class Solution:
    def canVisitAllRooms(self, rooms: List[List[int]]) -> bool:
        visited = {0}
        self.dfs(rooms, 0, visited)
        return len(visited) == len(rooms)

    def dfs(self, rooms, node, visited):
        neighbors = rooms[node]

        for neighbor in neighbors:
            if neighbor in visited:
                continue
            visited.add(neighbor)
            self.dfs(rooms, neighbor, visited)
        