import 'package:cleanarchitecture_v2/core/di/di_setup.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/search_filter_sheet.dart';
import 'package:cleanarchitecture_v2/domain/filter/filter_state.dart';
import 'package:cleanarchitecture_v2/presentation/search/screen/search_screen.dart';
import 'package:cleanarchitecture_v2/presentation/search/view_model/search_view_model.dart';
import 'package:flutter/material.dart';

class SearchRoot extends StatelessWidget {
  const SearchRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<SearchViewModel>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) {
        return SearchScreen(
          state: viewModel.state,
          onChanged: viewModel.searchRecipes,
          onTapFilter: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return SearchFilterSheet(
                  state: viewModel.state.filterState,
                  onApply: (FilterState state) {
                    viewModel.onChangeFilter(state);
                    Navigator.pop(context);
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
