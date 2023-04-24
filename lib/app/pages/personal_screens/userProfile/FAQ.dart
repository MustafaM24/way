import 'package:flutter/material.dart';
import 'package:way/app/pages/personal_screens/userProfile/ContactUs.dart';
import 'package:way/style/colors.dart';

class FAQsPage extends StatefulWidget {
  const FAQsPage({Key? key}) : super(key: key);

  @override
  _FAQsPageState createState() => _FAQsPageState();
}

class _FAQsPageState extends State<FAQsPage> {
  List<String> faqList = [
    'How to see and accept incoming bookings?',
    'How to cancel an appointment?',
    'How to change your business hours?',
    'How to change the services you offer?'
  ];

  List<String> answerList = [
    'To see and accept incoming bookings, go to the "Bookings" tab on the bottom navigation bar. Any new bookings will be highlighted in blue. To accept a booking, simply click on it and then click "Accept".',
    'To cancel an appointment, go to the "Bookings" tab on the bottom navigation bar. Find the appointment that you want to cancel and click on it. Then, click "Cancel" and follow the prompts.',
    'To change your business hours, go to the "Settings" tab on the bottom navigation bar. Under "Business hours", click "Edit" and then adjust your hours as necessary.',
    'To change the services you offer, go to the "Services" tab on the bottom navigation bar. Click "Add a service" to create a new service, or click on an existing service to edit it.'
  ];

  List<bool> isExpandedList = List<bool>.filled(4, false);

  void toggleExpansion(int index) {
    setState(() {
      isExpandedList[index] = !isExpandedList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        title: const Text('Frequently Asked Questions?'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Frequently Asked Questions?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    faqList.length,
                    (index) => GestureDetector(
                      onTap: () => toggleExpansion(index),
                      child: Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                            color: CustomColors.shadowGrey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      faqList[index],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    if (isExpandedList[index])
                                      Padding(
                                        padding: const EdgeInsets.only(top: 16),
                                        child: Text(
                                          answerList[index],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Icon(
                                  isExpandedList[index]
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  size: 24,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactUsPage()));
                    // TODO: Implement contact form
                  },
                  child: Text('Contact Us'),
                ),
              ),
              // SizedBox(height: 160),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     ElevatedButton(
              //       onPressed: () {
              //         // TODO: Implement "Yes" functionality
              //       },
              //       child: Text('Yes'),
              //       style: ElevatedButton.styleFrom(primary: Colors.green),
              //     ),
              //     SizedBox(width: 16),
              //     ElevatedButton(
              //       onPressed: () {
              //         // TODO: Implement "No" functionality
              //       },
              //       child: Text('No'),
              //       style: ElevatedButton.styleFrom(primary: Colors.red),
              //     ),
              //   ],
              // ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
