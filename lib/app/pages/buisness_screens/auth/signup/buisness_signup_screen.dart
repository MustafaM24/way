import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/common/fields/input_field.dart';
import 'package:way/app/pages/buisness_screens/auth/signup/buisness_category_select.dart';
import 'package:way/app/pages/buisness_screens/auth/buisness_login_screen.dart';
import 'package:way/app/validators/validators.dart';
import 'package:way/router/router.dart';

class BuisnessSignUpScreen extends StatefulWidget {
  const BuisnessSignUpScreen({super.key});

  @override
  State<BuisnessSignUpScreen> createState() => _BuisnessSignUpScreenState();
}

class _BuisnessSignUpScreenState extends State<BuisnessSignUpScreen> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool isButtonPressed = false;

//TODO: write sign up logic here. Email, password and confirm password below (inside if condition) are validated
  signupTapped() {
    isButtonPressed = true;
    if (formkey.currentState!.validate()) {
      print(emailController.text);
      print(passwordController.text);
      print(confirmPasswordController.text);
      print(phoneController.text);
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => BusinessCategoryScreen()));
      // Navigator.pushReplacementNamed(context, homeScreenRoute);
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
    confirmPasswordController.dispose();
    phoneController.dispose();
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
                    labelText: "Name",
                  ),
                  const SizedBox(height: 12),
                  InputField(
                    labelText: "Name of Buisness",
                  ),
                  const SizedBox(height: 12),
                  InputField(
                      labelText: "Email",
                      controller: emailController,
                      validator: emailValidator,
                      keyboardType: TextInputType.emailAddress),
                  const SizedBox(height: 12),
                  InputField(
                      labelText: "Password",
                      obscureText: true,
                      controller: passwordController,
                      validator: passwordValidator),
                  const SizedBox(height: 12),
                  InputField(
                      labelText: "Confirm Password",
                      controller: confirmPasswordController,
                      validator: (value) {
                        if (value != passwordController.text) {
                          return "*Passwords didn't match";
                        } else if (value!.isEmpty) {
                          return "*Required field";
                        }
                        return null;
                      }),
                  const SizedBox(height: 12),
                  InputField(
                    labelText: "Phone Number",
                    controller: phoneController,
                  ),
                  const SizedBox(height: 12),
                  InputField(
                    labelText: "Buisness Address",
                  ),
                  const SizedBox(height: 40),
                  PrimaryButton(title: "Continue", onTap: signupTapped),
                  const SizedBox(height: 12),
                  const Text("Already have an account?"),
                  const SizedBox(height: 12),
                  PrimaryButton(
                      title: "Login",
                      onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const BuisnessLogin()))
                      // Navigator.pushReplacementNamed(
                      //     context, personalLoginScreenRoute),
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
