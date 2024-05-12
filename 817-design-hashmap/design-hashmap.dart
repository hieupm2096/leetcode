class MyHashMap {
  late final List<int?> _list;

  MyHashMap() {
    _list = List<int?>.filled(1000001, null);
  }
  
  void put(int key, int value) {
    _list[key] = value;
  }
  
  int get(int key) {
    if (_list[key] != null) return _list[key]!;
    return -1;
  }
  
  void remove(int key) {
    _list[key] = null;
  }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * MyHashMap obj = MyHashMap();
 * obj.put(key,value);
 * int param2 = obj.get(key);
 * obj.remove(key);
 */