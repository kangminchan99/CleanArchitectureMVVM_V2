import 'package:cleanarchitecture_v2/core/presentation/components/recipe_grid_item.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/search_input_field.dart';
import 'package:cleanarchitecture_v2/presentation/search/search_state.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  final SearchState state;
  final void Function(String query)? onChanged;
  final VoidCallback? onTapFilter;
  const SearchScreen({
    super.key,
    required this.state,
    this.onChanged,
    this.onTapFilter,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Search recipes',
          style: TextStyles.mediumTextBold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.size28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.v16,
            Row(
              children: [
                Expanded(
                  child: SearchInputField(
                    placeHolder: 'Search Recipe',
                    onChanged: onChanged,
                  ),
                ),
                Gaps.h20,
                GestureDetector(
                  onTap: onTapFilter,
                  child: Container(
                    width: Sizes.size40,
                    height: Sizes.size40,
                    decoration: BoxDecoration(
                      color: ColorStyles.primary100,
                      borderRadius: BorderRadius.circular(Sizes.size10),
                    ),
                    child: Icon(
                      Icons.tune,
                      color: ColorStyles.white,
                    ),
                  ),
                ),
              ],
            ),
            Gaps.v20,
            Row(
              children: [
                Text(
                  state.searchTitle,
                  style: TextStyles.normalTextBold,
                ),
                Spacer(),
                Text(
                  state.resultsCount,
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.gray3,
                  ),
                ),
              ],
            ),
            Expanded(
              child: state.isLoading
                  ? Center(
                      child: CircularProgressIndicator.adaptive(),
                    )
                  : GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: Sizes.size16,
                      ),
                      itemCount: state.recipes.length,
                      itemBuilder: (context, index) {
                        final recipe = state.recipes[index];
                        return RecipeGridItem(recipe: recipe);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
