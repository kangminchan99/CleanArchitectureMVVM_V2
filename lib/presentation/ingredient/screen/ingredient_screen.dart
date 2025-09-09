import 'package:cleanarchitecture_v2/presentation/ingredient/action/ingredient_action.dart';
import 'package:cleanarchitecture_v2/presentation/ingredient/state/ingredient_state.dart';
import 'package:flutter/widgets.dart';

class IngredientScreen extends StatelessWidget {
  final IngredientState state;
  final void Function(IngredientAction action) onAction;

  const IngredientScreen({
    super.key,
    required this.state,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
