import 'dart:collection';

class LRUCache {
  late int _capacity;
  late LinkedList<Entry> _list;
  late Map<int, Entry> _dict;

  LRUCache(int capacity) {
    _capacity = capacity;
    _list = LinkedList();
    _dict = {};
  }

  int get(int key) {
    final entry = _dict[key];

    if (entry == null) return -1;

    entry.unlink();

    _list.addFirst(entry);

    return entry.value;
  }

  void put(int key, int value) {
    if (_dict.containsKey(key)) {
      final oldEntry = _dict[key]!;
      oldEntry.unlink();
    } else if (_dict.length >= _capacity) {
      final lruEntry = _list.last;
      lruEntry.unlink();

      _dict.remove(lruEntry.key);
    }

    final newEntry = Entry(key, value);
    _list.addFirst(newEntry);

    _dict[key] = newEntry;
  }
}

final class Entry extends LinkedListEntry<Entry> {
  final int key;
  final int value;

  Entry(this.key, this.value);
}