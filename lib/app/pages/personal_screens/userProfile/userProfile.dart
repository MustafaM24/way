import 'package:flutter/material.dart';
import 'package:way/app/pages/personal_screens/auth/personal_login_screen.dart';
import 'package:way/app/pages/personal_screens/userProfile/ContactUs.dart';
import 'package:way/app/pages/personal_screens/userProfile/FAQ.dart';
import 'package:way/app/pages/personal_screens/userProfile/accountDetails.dart';
import 'package:way/app/pages/personal_screens/appointments_Page/add_review.dart';
import 'package:way/app/pages/personal_screens/userProfile/messages/inbox.dart';
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
            color: Color(0xFF000000),
          ),
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
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 25,
                  children: [
                    _buildButton(
                        context, 'ACCOUNT DETAILS', AccountDetailsScreen()),
                    _buildButton(context, 'SETTINGS', SettingsScreen()),
                    _buildButton(context, 'FAQs', FAQsPage()),
                    _buildButton(context, 'CONTACT US', ContactUsPage()),
                    _buildButton(context, 'MESSAGES', PersonalMessageInbox()),
                  ],
                ),
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
                    primary: CustomColors.primaryBlue,
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
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Widget route) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *
          0.4, // Set width to 40% of the screen width
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
// add scroll in settings for user