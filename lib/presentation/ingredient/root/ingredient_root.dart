import 'package:cleanarchitecture_v2/core/di/di_setup.dart';
import 'package:cleanarchitecture_v2/presentation/ingredient/action/ingredient_action.dart';
import 'package:cleanarchitecture_v2/presentation/ingredient/screen/ingredient_screen.dart';
import 'package:cleanarchitecture_v2/presentation/ingredient/view_model/ingredient_view_model.dart';
import 'package:flutter/widgets.dart';

class IngredientRoot extends StatelessWidget {
  final int recipeId;
  const IngredientRoot({
    super.key,
    required this.recipeId,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<IngredientViewModel>();
    viewModel.onAction(IngredientAction.loadRecipe(recipeId));
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return IngredientScreen(
          state: viewModel.state,
          onAction: viewModel.onAction,
        );
      },
    );
  }
}
