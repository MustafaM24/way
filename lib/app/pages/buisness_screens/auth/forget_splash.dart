import 'package:flutter/material.dart';
import 'package:way/app/pages/buisness_screens/auth/buisness_login_screen.dart';
import 'package:way/app/pages/personal_screens/auth/personal_login_screen.dart';

class ForgetSplash extends StatefulWidget {
  const ForgetSplash({super.key});

  @override
  State<ForgetSplash> createState() => ForgetSplashState();
}

class ForgetSplashState extends State<ForgetSplash> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isButtonPressed = false;

  @override
  // run for 3 seconds then go to the login page
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const BuisnessLogin()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: (SizedBox(
          height: 200,
          width: 200,
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.contain,
          ),
        )),
      ),
    );
  }
}
