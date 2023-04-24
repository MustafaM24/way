import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/common/fields/input_field.dart';
import 'package:way/app/pages/buisness_screens/auth/buisness_login_screen.dart';
import 'package:way/app/pages/personal_screens/auth/forget_splash.dart';
import 'package:way/app/pages/personal_screens/auth/personal_login_screen.dart';
import 'package:way/app/validators/validators.dart';
import 'package:way/main.dart';
import 'package:way/router/router.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => ForgetPasswordPageState();
}

class ForgetPasswordPageState extends State<ForgetPasswordPage> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isButtonPressed = false;

//TODO: write login logic here. Email and password below (inside if condition) are validated

  continueForgetTapped() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ForgetPasswordPage()));
    print("Email Sent");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: formkey,
              autovalidateMode: isButtonPressed
                  ? AutovalidateMode.onUserInteraction
                  : AutovalidateMode.disabled,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  InputField(
                      labelText: "Email",
                      controller: emailController,
                      validator: emailValidator,
                      keyboardType: TextInputType.emailAddress),
                  const SizedBox(height: 18),
                  PrimaryButton(
                    title: "Continue",
                    onTap: () => Navigator.pushReplacementNamed(
                        context, forgetSplashRoute),
                  ),
                  // add a text
                  const SizedBox(height: 12),
                  const Text(
                      "If you have an existing account with the \nprovided email, you shall recieve a password renewal link!"),
                  const SizedBox(height: 15),
                  PrimaryButton(
                    title: "Back to Login",
                    onTap: () => {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const BuisnessLogin()))
                    },
                  ),
                  // end
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
