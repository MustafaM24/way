import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        title: Text('Contact Us'),
      ),
      body: Center(
        child: Text('This is the Contact Us page'),
      ),
    );
  }
}
