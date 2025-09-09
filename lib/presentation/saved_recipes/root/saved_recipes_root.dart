import 'package:cleanarchitecture_v2/core/di/di_setup.dart';

import 'package:cleanarchitecture_v2/presentation/saved_recipes/screen/saved_recipes_screen.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/view_model/saved_recipes_view_model.dart';
import 'package:flutter/material.dart';

class SavedRecipesRoot extends StatelessWidget {
  const SavedRecipesRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<SavedRecipesViewModel>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return SavedRecipesScreen(
          state: viewModel.state,
          onAction: viewModel.onAction,
        );
      },
    );
  }
}
