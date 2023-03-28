import 'package:flutter/material.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/BuisnessFAQ.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/settings/location.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/settings/notification.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/settings/payment.dart';
import 'package:way/router/router.dart';
import 'package:way/style/colors.dart';

class BuisnessSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: CustomColors.transparent,
          iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton(context, 'LOCATION', Location()),
                    // _buildButton(context, 'ACCOUNT DETAILS'),
                    SizedBox(width: 3),
                    _buildButton(
                        context, 'PAYMENT SETTINGS', PaymentSettingsScreen()),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton(context, 'NOTIFICATIONS', Notifications()),
                    SizedBox(width: 3),
                    _buildButton(context, "FAQ'S", BuisnessFAQsPage()),
                  ],
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
