class LRUCache {
    late Map<int, int> _cache;
    late int _capacity;

    LRUCache(int capacity) {
        _cache = {};
        _capacity = capacity;
    }
  
    int get(int key) {
        if (!_cache.containsKey(key)) return -1;
        final value = _cache[key]!;

        // to make sure the key is at the top of map -> most recently used
        _cache.remove(key);
        _cache[key] = value;

        return value;
    }
  
    void put(int key, int value) {
        if (_cache.containsKey(key)) {
            _cache.remove(key);
        } else if (_cache.length >= _capacity) {
            final lruKey = _cache.keys.first;
            _cache.remove(lruKey);
        }

        _cache[key] = value;
    }
}



/**
 * Your LRUCache object will be instantiated and called as such:
 * LRUCache obj = LRUCache(capacity);
 * int param1 = obj.get(key);
 * obj.put(key,value);
 */