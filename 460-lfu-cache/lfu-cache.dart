class LFUCache {
  late final int _capacity;
  late final Map<int, int> _cache;
  late final Map<int, int> _counterMap;
  late final Map<int, Map<int, int>> _freqMap;

  var _minFreq = 0;

  LFUCache(int capacity) {
    _capacity = capacity;
    _cache = {};
    _counterMap = {};
    _freqMap = {};
  }

  int get(int key) {
    if (!_cache.containsKey(key)) return -1;
    final value = _cache[key]!;

    _increaseFreq(key, value);

    return value;
  }

  void _increaseFreq(int key, int value) {
    // get the current frequency of key by access _keyFreqMap
    final oldFreq = _counterMap[key]!;
    final newFreq = oldFreq + 1;

    _counterMap[key] = newFreq;

    // remove key in _freqKeyMap value (which is a map)
    _freqMap[oldFreq]!.remove(key);

    // remove its freq to make sure it does not exist for further access
    if (_freqMap[oldFreq]?.isEmpty ?? true) {
      _freqMap.remove(oldFreq);

      // new min frequency
      if (_minFreq == oldFreq) {
        _minFreq = newFreq;
      }
    }

    if (_freqMap.containsKey(oldFreq + 1)) {
      // remove and re-add to make sure the key is most recently used
      // if the key does not exist, it does nothing
      _freqMap[newFreq]!.remove(key);
      _freqMap[newFreq]![key] = value;
    } else {
      _freqMap[newFreq] = {key: value};
    }
  }

  void put(int key, int value) {
    if (_cache.containsKey(key)) {
      _cache[key] = value;

      _increaseFreq(key, value);

      return;
    } else if (_cache.length == _capacity) {
      // we are not sure about which freq we should access in freqKeyMap
      // so this freqKeyMap needs to maintain its order of freq
      // which means freqKeyMap should be a DoublyLinkedList
      // but DoublyLinkedList raises a new problem that we could not access the
      // freq we want in O(1)
      // instead we use a minFreq to save the min frequency and then access
      // the freqMap using that minFreq
      final evictedKey = _freqMap[_minFreq]!.keys.first;

      _cache.remove(evictedKey);

      _counterMap.remove(evictedKey);

      _freqMap[_minFreq]!.remove(evictedKey);
    }

    _cache[key] = value;

    _minFreq = 1;

    _counterMap[key] = 1;

    if (_freqMap[1] == null) {
      _freqMap[1] = {key: value};
    } else {
      _freqMap[1]![key] = value;
    }
  }
}

/**
 * Your LFUCache object will be instantiated and called as such:
 * LFUCache obj = LFUCache(capacity);
 * int param1 = obj.get(key);
 * obj.put(key,value);
 */