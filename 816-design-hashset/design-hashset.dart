class MyHashSet {
  final _list = List<bool>.filled((pow(10, 6) + 1).toInt(), false);

  MyHashSet() {
    
  }
  
  void add(int key) {
    _list[key] = true;
  }
  
  void remove(int key) {
    _list[key] = false;
  }
  
  bool contains(int key) {
    return _list[key];
  }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * MyHashSet obj = MyHashSet();
 * obj.add(key);
 * obj.remove(key);
 * bool param3 = obj.contains(key);
 */