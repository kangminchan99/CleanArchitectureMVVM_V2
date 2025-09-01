import 'package:cleanarchitecture_v2/core/presentation/components/big_button.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/input_field.dart';
import 'package:cleanarchitecture_v2/ui/color_styles.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const routeURL = '/sign_up';
  final VoidCallback onTapSignIn;
  const SignUpScreen({super.key, required this.onTapSignIn});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Sizes.size20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create an account',
                  style: TextStyles.largeTextBold,
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    'Lets help you set up your account, it wont take long.',
                    style: TextStyles.smallerTextRegular,
                  ),
                ),
                Gaps.v20,
                InputField(label: 'Name', placeHolder: 'Enter Name'),
                Gaps.v20,
                InputField(label: 'Email', placeHolder: 'Enter Email'),
                Gaps.v20,
                InputField(
                  label: 'Password',
                  placeHolder: 'Enter password',
                ),
                Gaps.v20,
                InputField(
                  label: 'Confirm Password',
                  placeHolder: 'Retype password',
                ),
                Gaps.v20,
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Sizes.size5),
                      ),
                      side: BorderSide(
                        width: Sizes.size1,
                        color: ColorStyles.secondary100,
                      ),
                      activeColor: ColorStyles.secondary100,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      'Accept terms & Condition',
                      style: TextStyles.smallerTextRegular.copyWith(
                        color: ColorStyles.secondary100,
                      ),
                    ),
                  ],
                ),
                Gaps.v24,
                BigButton(text: 'Sign Up', onPressed: () {}),
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
                Gaps.v20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a member?',
                      style: TextStyles.smallerTextBold,
                    ),
                    GestureDetector(
                      onTap: widget.onTapSignIn,
                      child: Text(
                        'Sign In',
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
      ),
    );
  }
}
