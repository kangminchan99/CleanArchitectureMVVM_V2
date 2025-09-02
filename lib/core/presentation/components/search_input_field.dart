import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class SearchInputField extends StatelessWidget {
  final String placeHolder;
  final TextEditingController? controller;
  const SearchInputField({
    super.key,
    required this.placeHolder,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.size40,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: ColorStyles.gray4,
          ),
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
    );
  }
}
