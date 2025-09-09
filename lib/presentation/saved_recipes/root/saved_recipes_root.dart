import 'package:cleanarchitecture_v2/core/di/di_setup.dart';
import 'package:cleanarchitecture_v2/core/routing/router_paths.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/action/saved_recipes_action.dart';

import 'package:cleanarchitecture_v2/presentation/saved_recipes/screen/saved_recipes_screen.dart';
import 'package:cleanarchitecture_v2/presentation/saved_recipes/view_model/saved_recipes_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          onAction: (action) {
            if (action is OnTapRecipe) {
              context.push('${RouterPaths.ingredientPath}${action.recipe.id}');
              return;
            }
            viewModel.onAction(action);
          },
        );
      },
    );
  }
}
