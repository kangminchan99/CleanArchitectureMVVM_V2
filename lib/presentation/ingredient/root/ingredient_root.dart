import 'package:cleanarchitecture_v2/core/di/di_setup.dart';
import 'package:cleanarchitecture_v2/core/presentation/dialogs/rating_dialog.dart';
import 'package:cleanarchitecture_v2/core/presentation/dialogs/share_dialog.dart';
import 'package:cleanarchitecture_v2/presentation/ingredient/action/ingredient_action.dart';
import 'package:cleanarchitecture_v2/presentation/ingredient/screen/ingredient_screen.dart';
import 'package:cleanarchitecture_v2/presentation/ingredient/view_model/ingredient_view_model.dart';
import 'package:flutter/material.dart';

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
        return viewModel.state.recipe == null
            ? Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : IngredientScreen(
                state: viewModel.state,
                onAction: viewModel.onAction,
                onTapMenu: (menu) {
                  switch (menu) {
                    case IngredientMenu.share:
                      showDialog(
                        context: context,
                        builder: (context) {
                          return ShareDialog(
                            link:
                                'app.Recipe.co/${(viewModel.state.chefs.first.name).replaceAll(' ', '_').toLowerCase()}',
                            onTapCopyLink: (link) {
                              viewModel.onAction(
                                IngredientAction.onTapShare(link),
                              );
                              Navigator.pop(context);
                            },
                          );
                        },
                      );
                    case IngredientMenu.rate:
                      showDialog(
                        context: context,
                        builder: (context) {
                          return RatingDialog(
                            title: 'Rate Recipe',
                            actionName: 'Send',
                            onChanged: (score) {
                              viewModel.onAction(
                                IngredientAction.onTapRateRecipe(
                                  viewModel.state.recipe!,
                                  score,
                                ),
                              );
                              Navigator.pop(context);
                            },
                          );
                        },
                      );
                    case IngredientMenu.review:
                    case IngredientMenu.unSave:
                  }
                },
              );
      },
    );
  }
}
