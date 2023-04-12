import 'package:flutter/material.dart';
import 'package:way/app/pages/buisness_screens/menu/wallet/card.dart';
import 'package:way/app/pages/buisness_screens/menu/wallet/withdrawfunds.dart';
import 'package:way/style/colors.dart';

class Withdrawals extends StatelessWidget {
  const Withdrawals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF000000)),
        // title: const Text('Billing and Subscription',
        //     style: TextStyle(
        //         color: Colors.black,
        //         fontSize: 16.0,
        //         fontWeight: FontWeight.w400)),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                color: Color(0xFFA2ACCD),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Available',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'NGN 25,000',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          // Handle "Change" button tap
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Withdrawing()));
                        },
                        child: Text('Withdraw Funds',
                            style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          primary: CustomColors.primaryBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement "Yes" functionality
                      Navigator.of(context).pop();
                    },
                    child: Text('  Deposits  '),
                    style: ElevatedButton.styleFrom(primary: Colors.grey[600]),
                  ),
                  SizedBox(width: 80),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement "No" functionality
                    },
                    child: Text('Withdrawals'),
                    style: ElevatedButton.styleFrom(
                        primary: CustomColors.primaryBlue),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Second Card
              Column(
                children: [
                  // ListView(
                  //   padding: EdgeInsets.fromLTRB(5, 16, 5, 16),
                  // children: [
                  WalletCard(
                    name: 'John Doe',
                    age: 45,
                    imageUrl: 'assets/cat.jpg',
                    isPositive: false,
                    action: '(Withdrawn)',
                  ),
                  SizedBox(height: 20),
                  WalletCard(
                    name: 'Jane Smith',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                    isPositive: false,
                    action: '(Withdrawn)',
                  ),
                  SizedBox(height: 20),
                  WalletCard(
                    name: 'Bob Smith',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                    isPositive: false,
                    action: '(Withdrawn)',
                  ),
                  // Add more employee cards here as needed
                  // ],
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
