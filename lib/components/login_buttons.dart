import 'package:flutter/material.dart';
import 'package:responsividade/widgets/custom_outlined_button.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({
    Key? key,
    this.backgroundColor,
    required this.size,
  }) : super(key: key);

  final Size size;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyleUnderline = TextStyle(
        decoration: TextDecoration.underline,
        color: size.width > 1200 ? Colors.black : Colors.white);
    final TextStyle textStyle =
        TextStyle(color: size.width > 1200 ? Colors.black : Colors.white);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: Column(
        children: [
          SizedBox(
            width: size.width * .5,
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text:
                          'By tapping Create Account or Sign in, you agree to our',
                      style: textStyle),
                  TextSpan(text: ' Terms.', style: textStyleUnderline),
                  TextSpan(
                      text: 'Learn how we process your data in our ',
                      style: textStyle),
                  TextSpan(text: 'Privacy Policy ', style: textStyleUnderline),
                  TextSpan(text: 'and', style: textStyle),
                  TextSpan(text: 'Cookies Policy.', style: textStyleUnderline)
                ])),
          ),
          SizedBox(height: size.height * .04),
          CustomOutlinedButton(
              backgroundColor: backgroundColor,
              size: size,
              label: 'SIGN IN WITH APPLE',
              imageAsset: 'assets/images/logo_apple.png'),
          SizedBox(height: size.height * .01),
          CustomOutlinedButton(
              size: size,
              backgroundColor: backgroundColor,
              label: 'SIGN IN WITH FACEBOOK',
              imageAsset: 'assets/images/logo_facebook.png'),
          SizedBox(height: size.height * .01),
          CustomOutlinedButton(
              backgroundColor: backgroundColor,
              size: size,
              label: 'SIGN IN WITH NUMBER',
              imageAsset: 'assets/images/bubble.png'),
          SizedBox(height: size.height * .05),
          Text(
            'Trouble Signing In?',
            style: TextStyle(
                color: size.width > 1200 ? Colors.black : Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: size.width * .02,
          )
        ],
      ),
    );
  }
}
