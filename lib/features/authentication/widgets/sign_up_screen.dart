import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone_code/features/authentication/widgets/username_screen.dart';
import 'package:flutter_tiktok_clone_code/features/authentication/widgets/login.dart';
import 'package:flutter_tiktok_clone_code/features/authentication/widgets/auth_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants/sizes.dart';
import '../../../constants/gaps.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  void onLoginTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  void _onLoginBtnTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const UsernameScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size40),
          child: Column(
            children: [
              Gaps.v80,
              const Text(
                "Sign up for TikTok",
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gaps.v20,
              const Text(
                "Create a profile, follow other accounts, make your own videos, and more.",
                style: TextStyle(
                  fontSize: Sizes.size16,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),
              Gaps.v40,
              AuthButton(
                onButtonTap: _onLoginBtnTap,
                icon: const FaIcon(FontAwesomeIcons.user),
                text: "Use phone or email",
              ),
              Gaps.v10,
              AuthButton(
                onButtonTap: _onLoginBtnTap,
                icon: const FaIcon(FontAwesomeIcons.apple),
                text: "Continue with apple",
              ),
              Gaps.v10,
              AuthButton(
                onButtonTap: _onLoginBtnTap,
                icon: const FaIcon(FontAwesomeIcons.facebook),
                text: "Continue with facebook",
              ),
              Gaps.v10,
              AuthButton(
                onButtonTap: _onLoginBtnTap,
                icon: const FaIcon(FontAwesomeIcons.google),
                text: "Continue with google",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade50,
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.size32,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?'),
              Gaps.h5,
              GestureDetector(
                onTap: () => onLoginTap(context),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
