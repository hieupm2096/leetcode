class LRUCache {
  late final int _capacity;
  late final Map<int, int> _cache;

  LRUCache(int capacity) {
    _capacity = capacity;
    _cache = {};
  }
  
  int get(int key) {
    if (!_cache.containsKey(key)) return -1;

    final value = _cache[key]!;

    _cache.remove(key);
    _cache[key] = value;

    return value;
  }
  
  void put(int key, int value) {
    if (_cache.length == _capacity && !_cache.containsKey(key)) {
      final lruKey = _cache.keys.first;
      _cache.remove(lruKey);
    }

    _cache.remove(key);
    _cache[key] = value;
  }
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * LRUCache obj = LRUCache(capacity);
 * int param1 = obj.get(key);
 * obj.put(key,value);
 */