import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/pages/buisness_screens/auth/signup/addemployee.dart';
import 'package:way/app/pages/buisness_screens/auth/signup/signupComplete.dart';
import 'package:way/style/colors.dart';

class AddServicePageEdit extends StatefulWidget {
  @override
  _AddServicePageEditState createState() => _AddServicePageEditState();
}

class _AddServicePageEditState extends State<AddServicePageEdit> {
  String _serviceName = "";
  int _hours = 0;
  int _minutes = 0;
  int _price = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Service",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: CustomColors.secondaryblack,
            )),
        centerTitle: true,
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Add the heading and description
            // Text(
            //   "Add at least one service. Add more later and edit details.",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     fontSize: 16,
            //     fontWeight: FontWeight.w900,
            //   ),
            // ),
            SizedBox(height: 20),

            // Add input field for service name
            TextField(
              decoration: InputDecoration(
                hintText: "Service Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _serviceName = value;
                });
              },
            ),
            SizedBox(height: 20),

            // Add input fields for hours and minutes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.4,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Hours",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _hours = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.4,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Minutes",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _minutes = int.parse(value);
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Add input field for price
            Row(
              children: [
                Text(
                  "NGN",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Price",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _price = int.parse(value);
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Add the button to move to the next screen
            PrimaryButton(
              vertPadding: 20,
              title: "Save",
              onTap: onNext,
              color: CustomColors.primaryBlue,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ],
        ),
      ),
    );
  }

  // Move to the next screen
  void onNext() {
    Navigator.of(context).pop();
    // TODO: Navigate to the next screen
  }
}
