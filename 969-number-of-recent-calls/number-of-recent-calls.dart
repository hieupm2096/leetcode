class RecentCounter {
  late List<int> _list;

  RecentCounter() {
    _list = [];
  }
  
  int ping(int t) {
    _list.add(t);

    while (_list.first < t - 3000) {
      _list.removeAt(0);
    }

    return _list.length;
  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */