import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class TwoTab extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;
  final void Function(int index) onChanged;
  const TwoTab({
    super.key,
    required this.labels,
    this.selectedIndex = 0,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              onChanged(0);
            },
            child: selectedIndex == 0
                ? _SelectedTab(
                    text: labels[0],
                  )
                : _UnSelectedTab(
                    text: labels[0],
                  ),
          ),
        ),
        Gaps.h14,
        Expanded(
          child: GestureDetector(
            onTap: () {
              onChanged(1);
            },
            child: selectedIndex == 1
                ? _SelectedTab(
                    text: labels[1],
                  )
                : _UnSelectedTab(
                    text: labels[1],
                  ),
          ),
        ),
      ],
    );
  }
}

class _SelectedTab extends StatelessWidget {
  final String text;
  const _SelectedTab({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.size32 + Sizes.size1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.size10),
        color: ColorStyles.primary100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyles.smallerTextBold.copyWith(
              color: ColorStyles.white,
            ),
          ),
        ],
      ),
    );
  }
}

class _UnSelectedTab extends StatelessWidget {
  final String text;
  const _UnSelectedTab({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.size32 + Sizes.size1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.size10),
        color: ColorStyles.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyles.smallerTextBold.copyWith(
              color: ColorStyles.primary80,
            ),
          ),
        ],
      ),
    );
  }
}
