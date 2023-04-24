import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class Billing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        title: Text('Billing and Subscription',
            style: TextStyle(color: Color(0xFF000000))),
      ),
      body: Center(
        child: Text('This is the Billing & Subscription page'),
      ),
    );
  }
}
