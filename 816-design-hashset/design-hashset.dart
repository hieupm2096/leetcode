class MyHashSet {
  final _list = List<int?>.filled(1000001, null);

  MyHashSet() {
    
  }
  
  void add(int key) {
    _list[key] = 0;
  }
  
  void remove(int key) {
    _list[key] = null;
  }
  
  bool contains(int key) {
    return _list[key] != null;
  }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * MyHashSet obj = MyHashSet();
 * obj.add(key);
 * obj.remove(key);
 * bool param3 = obj.contains(key);
 */