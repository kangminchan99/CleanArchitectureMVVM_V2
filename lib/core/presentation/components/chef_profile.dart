import 'package:cleanarchitecture_v2/core/presentation/components/small_button.dart';
import 'package:cleanarchitecture_v2/domain/model/chef/chef_model.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class ChefProfile extends StatelessWidget {
  final ChefModel chef;
  const ChefProfile({super.key, required this.chef});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.network(
            chef.image,
            width: Sizes.size40,
            height: Sizes.size40,
            fit: BoxFit.cover,
          ),
        ),
        Gaps.h10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              chef.name,
              style: TextStyles.smallTextBold,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_off,
                  color: ColorStyles.primary80,
                  size: Sizes.size18,
                ),
                Text(
                  chef.address,
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.gray3,
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        SizedBox(
          width: Sizes.size80 + Sizes.size5,
          height: Sizes.size36,
          child: SmallButton(
            text: 'Follow',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
