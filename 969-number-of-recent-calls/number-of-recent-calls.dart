class RecentCounter {
  late List<int> _list;

  RecentCounter() {
    _list = [];
  }
  
  int ping(int t) {
    _list.add(t);

    if (_list.length == 1) return 1;

    while (_list.length > 1) {
      var first = _list.first;
      if (first >= t - 3000) break;

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