import 'package:cleanarchitecture_v2/data/data_source/local/local_recent_search_recipe_data_source_impl.dart';
import 'package:cleanarchitecture_v2/data/repository/mock_recent_search_recipe_repository_impl.dart';
import 'package:cleanarchitecture_v2/presentation/search/screen/search_screen.dart';
import 'package:cleanarchitecture_v2/presentation/search/view_model/search_view_model.dart';
import 'package:flutter/material.dart';

final _recentSearchRecipeRepository = MockRecentSearchRecipeRepositoryImpl(
  recipeDataSource: LocalRecentSearchRecipeDataSourceImpl(),
);

class SearchRoot extends StatelessWidget {
  const SearchRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = SearchViewModel(
      recentSearchRecipeRepository: _recentSearchRecipeRepository,
    );
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return SearchScreen(state: viewModel.state);
      },
    );
  }
}
