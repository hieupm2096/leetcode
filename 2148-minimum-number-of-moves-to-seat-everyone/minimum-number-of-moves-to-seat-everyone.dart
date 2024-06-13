class Solution {
  int minMovesToSeat(List<int> seats, List<int> students) {
    final n = seats.length;

    if (n == 1) return (students[0] - seats[0]).abs();

    seats.sort();
    students.sort();

    var ans = 0;

    for (var i = 0; i < n; i++) {
      ans += (students[i] - seats[i]).abs();
    }

    return ans;
  }
}