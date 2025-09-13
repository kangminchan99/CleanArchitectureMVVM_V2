import 'package:cleanarchitecture_v2/core/presentation/components/small_button.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class ShareDialog extends StatelessWidget {
  final String link;
  final void Function(String link) onTapCopyLink;
  const ShareDialog({
    super.key,
    required this.link,
    required this.onTapCopyLink,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(
        horizontal: Sizes.size16,
        vertical: Sizes.size20,
      ),
      content: SizedBox(
        width: 280,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recipe Link',
                  style: TextStyles.largeTextBold,
                ),
                Gaps.v10,
                Text(
                  'Copy recipe link and share your recipe link with friends and family.',
                  style: TextStyles.smallTextRegular.copyWith(
                    color: ColorStyles.gray2,
                  ),
                ),
                Gaps.v10,
                Stack(
                  children: [
                    Container(
                      width: 280,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Sizes.size9),
                        color: ColorStyles.gray4,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: Sizes.size14,
                          top: Sizes.size12,
                        ),
                        child: Text(
                          link,
                          style: TextStyles.smallerTextBold,
                          maxLines: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: SizedBox(
                        width: Sizes.size80 + Sizes.size5,
                        height: Sizes.size44,
                        child: SmallButton(
                          text: 'Copy Link',
                          onPressed: () => onTapCopyLink(link),
                          textStyle: TextStyles.smallerTextBold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              right: 0,
              child: Icon(
                Icons.close,
                size: Sizes.size20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
