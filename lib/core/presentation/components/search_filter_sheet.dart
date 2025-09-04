import 'package:cleanarchitecture_v2/core/presentation/components/filter_buttons.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/small_button.dart';
import 'package:cleanarchitecture_v2/domain/filter/filter_state.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class SearchFilterSheet extends StatefulWidget {
  final FilterState state;
  final void Function(FilterState state) onApply;
  const SearchFilterSheet({
    super.key,
    required this.state,
    required this.onApply,
  });

  @override
  State<SearchFilterSheet> createState() => _SearchFilterSheetState();
}

class _SearchFilterSheetState extends State<SearchFilterSheet> {
  late FilterState _state;
  @override
  void initState() {
    super.initState();
    _state = widget.state;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.size32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Gaps.v32,
          Align(
            alignment: Alignment.center,
            child: Text(
              'Filter Search',
              style: TextStyles.smallTextBold,
            ),
          ),
          Gaps.v20,
          Text(
            'Time',
            style: TextStyles.smallTextBold,
          ),
          Gaps.v10,
          FilterButtons(
            items: ['All', 'Newest', 'Oldest', 'Popularity'],
            selectedItem: _state.time,
            onItemSelected: (time) {
              setState(() {
                _state = _state.copyWith(time: time);
              });
            },
          ),
          Gaps.v20,
          Text(
            'Rate',
            style: TextStyles.smallTextBold,
          ),
          Gaps.v10,
          FilterButtons(
            items: ['5', '4', '3', '2', '1'],
            selectedItem: _state.rate.toString(),
            onItemSelected: (rate) {
              setState(() {
                _state = _state.copyWith(rate: int.parse(rate));
              });
            },
          ),
          Gaps.v20,
          Text(
            'Category',
            style: TextStyles.smallTextBold,
          ),
          Gaps.v10,
          FilterButtons(
            items: [
              'All',
              'Cereal',
              'Vegetables',
              'Dinner',
              'Local Dish',
              'Fruit',
              'BreadFast',
              'Spanish',
              'Lunch',
            ],
            selectedItem: _state.category,
            onItemSelected: (category) {
              setState(() {
                _state = _state.copyWith(category: category);
              });
            },
          ),
          Gaps.v32,
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 174,
              child: SmallButton(
                text: 'Filter',
                onPressed: () => widget.onApply(_state),
              ),
            ),
          ),
          Gaps.v24,
        ],
      ),
    );
  }
}
