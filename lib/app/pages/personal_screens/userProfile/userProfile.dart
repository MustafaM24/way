import 'package:flutter/material.dart';
import 'package:way/app/pages/personal_screens/auth/personal_login_screen.dart';
import 'package:way/app/pages/personal_screens/userProfile/ContactUs.dart';
import 'package:way/app/pages/personal_screens/userProfile/FAQ.dart';
import 'package:way/app/pages/personal_screens/userProfile/accountDetails.dart';
import 'package:way/app/pages/personal_screens/userProfile/add_review.dart';
import 'package:way/app/pages/personal_screens/userProfile/settings/settings_screen.dart';
import 'package:way/router/router.dart';
import 'package:way/style/colors.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColors.transparent,
          elevation: 0,
          title: Text(
            'Profile',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.7,
                color: Color(0xFF000000)),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/car.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  'JOHN DOE',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 2),
                Text(
                  '+1 123 456 7890',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 2),
                Text(
                  'wayApp@gmail.com',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton(
                        context, 'ACCOUNT DETAILS', AccountDetailsScreen()),
                    // _buildButton(context, 'ACCOUNT DETAILS'),
                    SizedBox(width: 3),
                    _buildButton(context, 'SETTINGS', SettingsScreen()),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton(context, 'FAQs', FAQsPage()),
                    SizedBox(width: 3),
                    _buildButton(context, 'CONTACT US', ContactUsPage()),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton(
                        context, 'GIVE US A REVIEW', AddReviewScreen()),
                    SizedBox(width: 203),
                    // SizedBox(width: 3),
                    // _buildButton(context, 'Button 4'),
                  ],
                ),
                SizedBox(height: 100),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const PersonalLoginScreen()));
                      // onTap:
                      // () => Navigator.pushReplacementNamed(
                      //     context, personalLoginScreenRoute);
                      // navigate to screen
                      // onTap:
                      // () => Navigator.pushReplacementNamed(
                      //     context, personalLoginScreenRoute);
                    },
                    child: Text(
                      "LOG OUT",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w900),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF000000),
                      padding: EdgeInsets.symmetric(
                        horizontal: 65,
                        vertical: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildButton(BuildContext context, String text, Widget route) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 200,
        width: 200,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
