import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/common/fields/input_field.dart';
import 'package:way/app/pages/buisness_screens/auth/buisness_login_screen.dart';
import 'package:way/app/validators/validators.dart';
import 'package:way/router/router.dart';

import 'forget_password.dart';

class PersonalLoginScreen extends StatefulWidget {
  const PersonalLoginScreen({super.key});

  @override
  State<PersonalLoginScreen> createState() => _PersonalLoginScreenState();
}

class _PersonalLoginScreenState extends State<PersonalLoginScreen> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isButtonPressed = false;

//TODO: write login logic here. Email and password below (inside if condition) are validated
  loginTapped() {
    isButtonPressed = true;
    if (formkey.currentState!.validate()) {
      print(emailController.text);
      print(passwordController.text);
      Navigator.pushReplacementNamed(context, homeScreenRoute);
    }
    setState(() {});
  }

  //TODO: write sign in with logic here.
  // signinWithGoogleTapped() {
  //   print("Sign in with Google");
  // }

  // //TODO: write forgot password logic here.
  // forgotPasswordTapped() {
  //   print("forgot Password");
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
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
                  const SizedBox(height: 12),
                  InputField(
                      labelText: "Password",
                      controller: passwordController,
                      obscureText: true,
                      validator: passwordValidator),
                  const SizedBox(height: 8),
                  // forget password text button
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const ForgetPasswordPage()))
                    },
                    child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text("Forgot Password?")),
                  ),
                  const SizedBox(height: 16),
                  // login button
                  PrimaryButton(title: "Login", onTap: loginTapped),
                  const SizedBox(height: 12),
                  const Text("New User?"),
                  const SizedBox(height: 12),
                  // sign up button
                  PrimaryButton(
                      title: "Sign Up",
                      onTap: () => Navigator.pushReplacementNamed(
                          context, personalSignupScreenRoute)),
                  const SizedBox(height: 12),
                  // SignInButton(
                  //   Buttons.Google,
                  //   onPressed: signinWithGoogleTapped,
                  //   padding:
                  //       const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  //   shape: const RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.all(Radius.circular(8))),
                  // ),
                  const SizedBox(height: 20),
                  // switch to buisness button
                  PrimaryButton(
                      title: "Switch to Business",
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const BuisnessLogin()));
                        // For me
                        //TODO: write navigation here.
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
