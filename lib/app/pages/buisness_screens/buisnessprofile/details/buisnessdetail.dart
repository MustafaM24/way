import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/common/fields/input_field.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/details/changePassword.dart';
import 'package:way/style/colors.dart';

class BuisnessDetail extends StatelessWidget {
  //   onSave() {
  //   Navigator.of(context).pop();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        title: Text('Account Details',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            InputField(
              labelText: 'Buisness Name',
            ),
            SizedBox(height: 20.0),
            InputField(
              labelText: 'Email',
            ),
            SizedBox(height: 20.0),
            InputField(
              labelText: 'Phone Number',
            ),
            SizedBox(height: 20.0),
            InputField(
              labelText: 'Address',
            ),
            const SizedBox(height: 20),
            PrimaryButton(
              title: "Change Password",
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => BuissnessPasswordChange()));
              },
              color: Color(0xFF000000),
              width: MediaQuery.of(context).size.width / 1.2,
            ),
            SizedBox(height: 60.0),
            // Text(
            //   'What services do you want to see?',
            //   style: TextStyle(color: Colors.grey, fontSize: 16.0),
            // ),
            // SizedBox(height: 20.0),
            // SelectableWords(),
            // SizedBox(height: 20.0),
            PrimaryButton(
              vertPadding: 20,
              title: "Save",
              onTap: (() {
                //onsave()
                Navigator.of(context).pop();
              }),
              color: Color(0xFF000000),
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ],
        ),
      ),
    );
  }
}
