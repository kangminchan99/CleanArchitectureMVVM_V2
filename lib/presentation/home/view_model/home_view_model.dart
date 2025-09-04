import 'package:cleanarchitecture_v2/presentation/home/home_state.dart';
import 'package:flutter/widgets.dart';

class HomeViewModel with ChangeNotifier {
  HomeState _state = HomeState(
    categories: [
      'All',
      'Indian',
      'Italian',
      'Asian',
      'Chinese',
      'Japanese',
    ],
    selectedCategory: 'All',
  );

  HomeState get state => _state;

  Future<void> onSelectCategory(String category) async {
    _state = state.copyWith(selectedCategory: category);
    notifyListeners();
  }
}
