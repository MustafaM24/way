import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class ClientsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        title: Text('Clients',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w900)),
        // centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Import Clients from Phone\'s Contacts First',
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              'Create client cards & invite your existing clients \nto WAY',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            Text(
              'You can keep track of client information and ...',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement add clients functionality
              },
              child: Text(
                'Add Clients',
                style: TextStyle(fontSize: 16.0),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF000000),
                padding: EdgeInsets.symmetric(
                  horizontal: 60.0,
                  vertical: 10.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
