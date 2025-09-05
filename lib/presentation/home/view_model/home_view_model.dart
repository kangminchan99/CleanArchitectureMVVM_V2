import 'package:cleanarchitecture_v2/domain/usecase/get_categories_usecase.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_dishes_by_category_usecase.dart';
import 'package:cleanarchitecture_v2/presentation/home/home_state.dart';
import 'package:flutter/widgets.dart';

class HomeViewModel with ChangeNotifier {
  final GetCategoriesUsecase _getCategoriesUsecase;
  final GetDishesByCategoryUsecase _getDishesByCategoryUsecase;

  HomeViewModel({
    required GetCategoriesUsecase getCategoriesUsecase,
    required GetDishesByCategoryUsecase getDishesByCategoryUsecase,
  }) : _getCategoriesUsecase = getCategoriesUsecase,
       _getDishesByCategoryUsecase = getDishesByCategoryUsecase {
    fetchCategories();
  }

  HomeState _state = HomeState();

  HomeState get state => _state;

  Future<void> fetchCategories() async {
    _state = state.copyWith(
      categories: await _getCategoriesUsecase.execute(),
      selectedCategory: 'All',
    );
    await _fetchDishesByCategory('All');
    notifyListeners();
  }

  Future<void> _fetchDishesByCategory(String category) async {
    final dishes = await _getDishesByCategoryUsecase.execute(category);
    _state = state.copyWith(
      dishes: dishes,
    );
    notifyListeners();
  }

  Future<void> onSelectCategory(String category) async {
    _state = state.copyWith(selectedCategory: category);
    notifyListeners();

    await _fetchDishesByCategory(category);
  }
}
