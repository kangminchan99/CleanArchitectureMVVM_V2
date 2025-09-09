import 'dart:async';

import 'package:cleanarchitecture_v2/domain/repository/bookmark_repository.dart';
import 'package:rxdart/subjects.dart';

class MockBookmarkRepositoryImpl implements BookmarkRepository {
  final _bookmarkedIds = <int>{2, 4};
  // BehaviorSubject - 관찰자가 있어야지만 데이터를 돌려줌 (rxdart 패키지)
  final _streamController = BehaviorSubject<Set<int>>();

  MockBookmarkRepositoryImpl() {
    _streamController.add(_bookmarkedIds);
  }

  @override
  Future<void> save(int id) async {
    _bookmarkedIds.add(id);
    _streamController.add(_bookmarkedIds);
  }

  @override
  Future<void> unSave(int id) async {
    _bookmarkedIds.remove(id);
    _streamController.add(_bookmarkedIds);
  }

  @override
  Future<void> toggle(int id) async {
    if (_bookmarkedIds.contains(id)) {
      unSave(id);
    } else {
      save(id);
    }
    _streamController.add(_bookmarkedIds);
  }

  @override
  Future<List<int>> getBookmarks() async {
    return _bookmarkedIds.toList();
  }

  @override
  Future<void> clear() async {
    _bookmarkedIds.clear();
    _streamController.add(_bookmarkedIds);
  }

  @override
  Stream<Set<int>> bookmarkStream() {
    return _streamController.stream;
  }
}
