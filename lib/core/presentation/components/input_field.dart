import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final String placeHolder;
  final TextEditingController? controller;
  const InputField({
    super.key,
    required this.label,
    required this.placeHolder,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.smallTextRegular,
        ),
        Gaps.v5,
        TextField(
          controller: controller,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.size10),
              borderSide: BorderSide(
                color: ColorStyles.gray4,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.size10),
              borderSide: BorderSide(
                color: ColorStyles.primary100,
              ),
            ),
            hintText: placeHolder,
            hintStyle: TextStyles.smallTextRegular.copyWith(
              color: ColorStyles.gray4,
            ),
          ),
        ),
      ],
    );
  }
}
