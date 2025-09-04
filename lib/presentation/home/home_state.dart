import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  @override
  final String selectedCategory;
  @override
  final List<String> categories;

  HomeState({
    this.selectedCategory = 'All',
    this.categories = const [],
  });
}
