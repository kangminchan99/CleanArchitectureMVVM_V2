import 'package:cleanarchitecture_v2/data/data_source/remote/remote_recipe_data_source_impl.dart';
import 'package:cleanarchitecture_v2/data/repository/mock_bookmark_repository_impl.dart';
import 'package:cleanarchitecture_v2/data/repository/mock_recipe_repository_impl.dart';
import 'package:cleanarchitecture_v2/domain/usecase/get_saved_recipes_usecase.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/screen/saved_recipes_screen.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/view_model/saved_recipes_view_model.dart';
import 'package:flutter/material.dart';

final _getSavedRecipesUseCase = GetSavedRecipesUsecase(
  recipeRepository: MockRecipeRepositoryImpl(
    recipeDataSource: RemoteRecipeDataSourceImpl(),
  ),
  bookmarkRepository: MockBookmarkRepositoryImpl(),
);

class SavedRecipesRoot extends StatelessWidget {
  const SavedRecipesRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = SavedRecipesViewModel(
      getSavedRecipesUsecase: _getSavedRecipesUseCase,
    );

    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return SavedRecipesScreen(state: viewModel.state);
      },
    );
  }
}
