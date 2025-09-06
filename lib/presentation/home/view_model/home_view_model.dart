import 'dart:async';
import 'dart:developer';

import 'package:cleanarchitecture_v2/core/domain/error/network_error.dart';
import 'package:cleanarchitecture_v2/core/domain/error/result.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_categories_usecase.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_dishes_by_category_usecase.dart';
import 'package:cleanarchitecture_v2/presentation/home/home_state.dart';
import 'package:flutter/widgets.dart';

class HomeViewModel with ChangeNotifier {
  final GetCategoriesUsecase _getCategoriesUsecase;
  final GetDishesByCategoryUsecase _getDishesByCategoryUsecase;

  // 단발성 상태는 Stream 사용 아닐경우 Stream 없이
  final _eventController = StreamController<NetworkError>();

  Stream<NetworkError> get eventStream => _eventController.stream;

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
    final result = await _getCategoriesUsecase.execute();

    switch (result) {
      case ResultSuccess<List<String>, NetworkError>():
        _state = state.copyWith(
          categories: result.data,
          selectedCategory: 'All',
        );
        await _fetchDishesByCategory('All');
        notifyListeners();
      case ResultError<List<String>, NetworkError>():
        switch (result.error) {
          case NetworkError.requestTimeout:
          case NetworkError.noInternet:
          case NetworkError.serverError:
          case NetworkError.unknown:
        }
        _eventController.add(result.error);
    }
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
