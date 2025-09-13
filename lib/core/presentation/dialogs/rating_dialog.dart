import 'package:cleanarchitecture_v2/core/presentation/components/small_button.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class RatingDialog extends StatefulWidget {
  final String title;
  final String actionName;
  final void Function(int score) onChanged;
  const RatingDialog({
    super.key,
    required this.title,
    required this.actionName,
    required this.onChanged,
  });

  @override
  State<RatingDialog> createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.title,
        style: TextStyles.smallTextRegular,
      ),
      content: RatingBar(
        value: _value,
        onRatingSelected: (int value) {
          setState(() {
            _value = value;
          });
        },
      ),
      actions: [
        SmallButton(
          text: widget.actionName,
          color: ColorStyles.rating,
          textStyle: TextStyles.smallerTextRegular,
          onPressed: _value == 0
              ? null
              : () {
                  widget.onChanged(_value);
                },
        ),
      ],
    );
  }
}

class RatingBar extends StatelessWidget {
  final int value;
  final void Function(int) onRatingSelected;
  const RatingBar({
    super.key,
    required this.value,
    required this.onRatingSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTapDown: (_) {
            onRatingSelected(index + 1);
          },
          child: Icon(
            index < value ? Icons.star : Icons.star_border_outlined,
            size: Sizes.size20,
            color: ColorStyles.rating,
          ),
        );
      }),
    );
  }
}
