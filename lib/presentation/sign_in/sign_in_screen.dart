import 'package:cleanarchitecture_v2/core/presentation/components/big_button.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/input_field.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  final VoidCallback onTapSignUp;
  final VoidCallback onTapSignIn;
  const SignInScreen({
    super.key,
    required this.onTapSignUp,
    required this.onTapSignIn,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Sizes.size20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v10,
              Text(
                'Hello',
                style: TextStyles.headerTextBold,
              ),
              Text(
                'Welcome Back!',
                style: TextStyles.largeTextRegular,
              ),
              Gaps.v56,
              InputField(label: 'Enter Email', placeHolder: 'Enter email'),
              Gaps.v32,
              InputField(
                label: 'Enter Password',
                placeHolder: 'Enter password',
              ),
              Gaps.v20,
              Text(
                'Forgot Password?',
                style: TextStyles.smallerTextRegular.copyWith(
                  color: ColorStyles.secondary100,
                ),
              ),
              Gaps.v24,
              BigButton(text: 'Sign In', onPressed: onTapSignIn),
              Gaps.v20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Sizes.size52,
                    height: Sizes.size1,
                    color: ColorStyles.gray4,
                  ),
                  Gaps.h8,
                  Text(
                    'Or Sign in With',
                    style: TextStyles.smallerTextBold.copyWith(
                      color: ColorStyles.gray4,
                    ),
                  ),
                  Gaps.h8,
                  Container(
                    width: Sizes.size52,
                    height: Sizes.size1,
                    color: ColorStyles.gray4,
                  ),
                ],
              ),
              Gaps.v20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/login/google_button.png',
                    width: Sizes.size60,
                    height: Sizes.size60,
                  ),
                  Gaps.h16,
                  Image.asset(
                    'assets/images/login/facebook_button.png',
                    width: Sizes.size60,
                    height: Sizes.size60,
                  ),
                ],
              ),
              Gaps.v52,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: TextStyles.smallerTextBold,
                  ),
                  GestureDetector(
                    onTap: onTapSignUp,
                    child: Text(
                      'Sign Up',
                      style: TextStyles.smallerTextBold.copyWith(
                        color: ColorStyles.secondary100,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
