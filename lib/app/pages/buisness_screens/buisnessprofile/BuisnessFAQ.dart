import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class BuisnessFAQsPage extends StatefulWidget {
  @override
  _BuisnessFAQsPageState createState() => _BuisnessFAQsPageState();
}

class _BuisnessFAQsPageState extends State<BuisnessFAQsPage> {
  String dropdownValue = 'How to see and accept incoming bookings?';

  List<String> faqList = [
    'How to see and accept incoming bookings?',
    'How to cancel an appointment?',
    'How to change your business hours?',
    'How to change the services you offer?'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),

        // title: Text('Frequently Asked Questions?'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Frequently Asked Questions?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            // SizedBox(height: 16),
            // Center(
            //   child: Text(
            //     'Identify yourself on the map to enable your clients to find you easily and quicker.',
            //     style: TextStyle(fontSize: 16),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
            SizedBox(height: 32),
            DropdownButtonFormField<String>(
              value: dropdownValue,
              onChanged: (newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: faqList
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              decoration: InputDecoration(
                labelText: 'Select a question',
                border: OutlineInputBorder(),
              ),
              isExpanded: true, // Add this line
            ),

            SizedBox(height: 16),
            Text(
              'Answer: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'To see and accept incoming bookings, go to the "Bookings" tab on the bottom navigation bar. Any new bookings will be highlighted in blue. To accept a booking, simply click on it and then click "Accept".',
            ),
            SizedBox(height: 64),
            Center(
              child: Text(
                "Didn't find the answer to your question?",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement contact form
                },
                child: Text('Contact Us'),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement "Yes" functionality
                  },
                  child: Text('Yes'),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement "No" functionality
                  },
                  child: Text('No'),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                ),
              ],
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
