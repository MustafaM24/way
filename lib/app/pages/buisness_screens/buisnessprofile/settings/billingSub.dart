import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class BillingPage extends StatelessWidget {
  const BillingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF000000)),
        title: const Text('Billing and Subscription',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w400)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // First Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(
                  color: CustomColors.primaryBlue,
                  width: 2.0,
                ),
              ),
              color: CustomColors.shadowGrey.withOpacity(0.5),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Plan Details',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Standard Provider',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Handle "Change Plan" button tap
                      },
                      child: Text('Change Plan',
                          style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                        primary: CustomColors.textGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            // Second Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(
                  color: CustomColors.primaryBlue,
                  width: 2.0,
                ),
              ),
              color: CustomColors.shadowGrey.withOpacity(0.5),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Billing',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'account@gmail.com',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Business Name',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: 24.0),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      color: CustomColors.disableGrey.withOpacity(0.2),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Payment Method',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(height: 16.0),
                            Text(
                              '**** **** **** ****6473',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(height: 8.0),
                            Row(children: [
                              Text(
                                '**/**',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(width: 40.0),
                              Text(
                                '***',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ]),
                            const SizedBox(height: 50.0),
                            Center(
                              child: ElevatedButton(
                                  onPressed: () {
                                    // Handle "Update Payment Method" button tap
                                  },
                                  child: Text('Update Payment Method',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300)),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFFD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  )),
                              // child: TextButton(
                              //   onPressed: () {
                              //     // Handle "Update Payment Method" button tap
                              //   },
                              //   child: Text('Update Payment Method'),
                              // ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                          onPressed: () {
                            // Handle "Update Payment Method" button tap
                          },
                          child: Text('Cancel Subscription',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300)),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
