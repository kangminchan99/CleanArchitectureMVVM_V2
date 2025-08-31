import 'package:cleanarchitecture_v2/domain/repository/bookmark_repository.dart';

class MockBookmarkRepositoryImpl implements BookmarkRepository {
  final _bookmarkedIds = <int>{2, 4};

  @override
  Future<void> save(int id) async {
    _bookmarkedIds.add(id);
  }

  @override
  Future<void> unSave(int id) async {
    _bookmarkedIds.remove(id);
  }

  @override
  Future<void> toggle(int id) async {
    if (_bookmarkedIds.contains(id)) {
      unSave(id);
    } else {
      save(id);
    }
  }

  @override
  Future<List<int>> getBookmarks() async {
    return _bookmarkedIds.toList();
  }

  @override
  Future<void> clear() async {
    _bookmarkedIds.clear();
  }
}
