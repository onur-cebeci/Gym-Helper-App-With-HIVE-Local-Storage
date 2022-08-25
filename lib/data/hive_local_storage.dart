import 'package:gym_helper_githup/models/storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveLocalStorage {
  late Box<Storage> _sizeBox;

  HiveLocalStorage() {
    _sizeBox = Hive.box<Storage>('sizes');
  }

  Future<void> addIndex({required Storage index}) async {
    await _sizeBox.put(index.id, index);
  }

  Future<bool> deleteIndex({required Storage index}) async {
    await index.delete();
    return true;
  }

  Future<List<Storage>> getAllList() async {
    List<Storage> _allList = <Storage>[];
    _allList = _sizeBox.values.toList();

    if (_allList.isNotEmpty) {
      _allList.sort((Storage a, Storage b) => a.time.compareTo(b.time));
    }
    return _allList;
  }

  Future<Storage?> getIndex({required String id}) async {
    if (_sizeBox.containsKey(id)) {
      return _sizeBox.get(id);
    } else {
      return null;
    }
  }
}
