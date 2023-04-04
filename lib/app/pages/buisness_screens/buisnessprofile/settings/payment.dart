import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/style/colors.dart';

class PaymentSettingsScreen extends StatefulWidget {
  @override
  _PaymentSettingsScreenState createState() => _PaymentSettingsScreenState();
}

class _PaymentSettingsScreenState extends State<PaymentSettingsScreen> {
  bool _requestDeposit = false;
  String _bankName = '';
  String _accountName = '';
  String _accountNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        centerTitle: true,
        title: Text(
          'Payment Settings',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Checkbox(
                  value: _requestDeposit,
                  onChanged: (value) {
                    setState(() {
                      _requestDeposit = value!;
                    });
                  },
                  checkColor: Color(0xFFFFFFFF),
                  activeColor: Colors.black,
                ),
                Text(
                  'Request Deposit',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            // SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.keyboard_double_arrow_right,
                          color: Color(0xFF000000),
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'This feature protects you from last \nminute cancellation and no-show.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.keyboard_double_arrow_right,
                          color: Color(0xFF000000),
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Activating it will request your clients to pay \n20% deposit ahead of the appointment.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.keyboard_double_arrow_right,
                          color: Color(0xFF000000),
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'In an event, where they cancel 45min before \nappointment, they don\'t get the deposit back, \nyou get to keep it.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                labelText: 'Bank Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _bankName = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Account Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _accountName = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Account Number',
                border: OutlineInputBorder(),
                // prefixText: 'NGN ',
              ),
              onChanged: (value) {
                setState(() {
                  _accountNumber = value;
                });
              },
            ),
            SizedBox(height: 20),
            PrimaryButton(
              vertPadding: 20,
              horizPadding: 100,
              title: 'Save',
              onTap: () {
                // TODO: Implement save functionality
              },
              color: CustomColors.primaryBlue,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ],
        ),
      ),
    );
  }
}
