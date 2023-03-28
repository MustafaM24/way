import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/pages/buisness_screens/auth/buisness_login_screen.dart';
import 'package:way/style/colors.dart';

class SignupCompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Congratulations!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Welcome to WAY",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Your Sign Up has Completed.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30),
            PrimaryButton(
              title: "Continue",
              color: Color(0xFF000000),
              width: MediaQuery.of(context).size.width / 1.2,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const BuisnessLogin()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
