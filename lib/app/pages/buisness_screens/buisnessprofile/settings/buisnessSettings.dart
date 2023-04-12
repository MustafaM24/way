import 'package:flutter/material.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/BuisnessFAQ.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/settings/billingSub.dart';
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 25,
                  children: [
                    _buildButton(context, 'LOCATION', Location()),
                    _buildButton(
                        context, 'PAYMENT SETTINGS', PaymentSettingsScreen()),
                    _buildButton(context, 'NOTIFICATIONS', Notifications()),
                    _buildButton(
                        context, 'BILLING & SUBSCRIPTION', BillingPage()),
                  ],
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
