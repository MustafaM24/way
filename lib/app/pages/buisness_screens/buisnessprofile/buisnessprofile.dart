import 'package:flutter/material.dart';
import 'package:way/app/pages/buisness_screens/auth/buisness_login_screen.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/BuisnessContactUs.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/BuisnessFAQ.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/details/buisnessdetail.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/settings/buisnessSettings.dart';
import 'package:way/app/pages/buisness_screens/feedback/customer_feedback_screen.dart';
import 'package:way/app/pages/personal_screens/appointments_Page/add_review.dart';
import 'package:way/router/router.dart';
import 'package:way/style/colors.dart';

class BuisnessProfile extends StatelessWidget {
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
                "Freaky's Barbers",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 2),
              Text(
                '09076486282',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 2),
              Text(
                'freaky@gmail.com',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 25,
                  children: [
                    _buildButton(context, 'ACCOUNT DETAILS', BuisnessDetail()),
                    _buildButton(context, 'SETTINGS', BuisnessSettings()),
                    _buildButton(context, 'FAQs', BuisnessFAQsPage()),
                    _buildButton(
                        context, 'CONTACT US', BuisnessContactUsPage()),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Padding(
                padding: EdgeInsets.all(0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const BuisnessLogin()));
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
          primary: CustomColors.primaryBlue,
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
