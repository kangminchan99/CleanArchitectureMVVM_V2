import 'package:cleanarchitecture_v2/domain/model/recipe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_action.freezed.dart';

// sealed class를 사용하면 안쪽에 있는 것들을 switch문 분기를 처리해서
// 실수를 하지 않게끔 할 수 있다.
@freezed
sealed class HomeAction with _$HomeAction {
  const factory HomeAction.searchTapped() = OnSearchTapped;

  const factory HomeAction.selectCategory(String category) = OnSelectCategory;

  const factory HomeAction.favoriteTapped(RecipeModel recipe) =
      OnFavoriteTapped;
}
