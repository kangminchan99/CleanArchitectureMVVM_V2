import 'package:cleanarchitecture_v2/domain/usecase/get_categories_usecase.dart';
import 'package:cleanarchitecture_v2/presentation/home/home_state.dart';
import 'package:flutter/widgets.dart';

class HomeViewModel with ChangeNotifier {
  final GetCategoriesUsecase _getCategoriesUsecase;

  HomeViewModel({
    required GetCategoriesUsecase getCategoriesUsecase,
  }) : _getCategoriesUsecase = getCategoriesUsecase {
    fetchCategories();
  }

  HomeState _state = HomeState();

  HomeState get state => _state;

  Future<void> fetchCategories() async {
    _state = state.copyWith(
      categories: await _getCategoriesUsecase.execute(),
      selectedCategory: 'All',
    );
    notifyListeners();
  }

  Future<void> onSelectCategory(String category) async {
    _state = state.copyWith(selectedCategory: category);
    notifyListeners();
  }
}
