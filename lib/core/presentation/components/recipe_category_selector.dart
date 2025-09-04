import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class RecipeCategorySelector extends StatelessWidget {
  final List<String> categories;
  final void Function(String category) onSelecteCategory;
  final String selectedCategory;
  const RecipeCategorySelector({
    super.key,
    required this.categories,
    required this.onSelecteCategory,
    required this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((e) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => onSelecteCategory(e),
            child: e == selectedCategory
                ? SelectedCategory(category: e)
                : UnSelectedCategory(category: e),
          );
        }).toList(),
      ),
    );
  }
}

class SelectedCategory extends StatelessWidget {
  final String category;
  const SelectedCategory({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Sizes.size10,
        ),
        color: ColorStyles.primary100,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.size20,
        vertical: Sizes.size7,
      ),
      child: Text(
        category,
        style: TextStyles.smallerTextBold.copyWith(
          color: ColorStyles.white,
        ),
      ),
    );
  }
}

class UnSelectedCategory extends StatelessWidget {
  final String category;
  const UnSelectedCategory({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.size20,
        vertical: Sizes.size7,
      ),
      child: Text(
        category,
        style: TextStyles.smallerTextBold.copyWith(
          color: ColorStyles.primary80,
        ),
      ),
    );
  }
}
