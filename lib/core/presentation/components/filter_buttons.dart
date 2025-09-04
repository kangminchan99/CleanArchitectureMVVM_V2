import 'package:cleanarchitecture_v2/core/presentation/components/filter_button.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:flutter/material.dart';

class FilterButtons extends StatelessWidget {
  final List<String> items;
  final String selectedItem;
  final void Function(String item) onItemSelected;
  const FilterButtons({
    super.key,
    required this.items,
    required this.selectedItem,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: items.expand((e) {
        return [
          GestureDetector(
            onTap: () => onItemSelected(e),
            child: FilterButton(text: e, isSelected: e == selectedItem),
          ),
          Gaps.h10,
        ];
      }).toList(),
    );
  }
}
