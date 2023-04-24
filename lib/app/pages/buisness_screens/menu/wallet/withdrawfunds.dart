import 'package:flutter/material.dart';
import 'package:way/app/common/fields/money_field.dart';
import 'package:way/app/pages/buisness_screens/menu/wallet/card.dart';
import 'package:way/app/pages/buisness_screens/menu/wallet/withdrawfunds.dart';
import 'package:way/style/colors.dart';

class Withdrawing extends StatelessWidget {
  const Withdrawing({Key? key}) : super(key: key);

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
                      const SizedBox(height: 32.0),
                      Text(
                        'How much would you like to withdraw?',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          // fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                          prefix: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              '(NGN)',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // suffixIcon: Icon(
                          //   Icons.check_circle,
                          //   color: Colors.green,
                          //   size: 32,
                          // ),
                          fillColor:
                              Colors.white, // set background color to white
                          filled: true,
                        ),
                      ),
                      const SizedBox(height: 40.0),
                      // MoneyInputField(),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle "Change" button tap
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => Withdrawing()));
                          },
                          child: Text('Withdraw',
                              style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            primary: CustomColors.primaryBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40.0),
                      Padding(
                        padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle "Change" button tap
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => Withdrawing()));
                          },
                          child: Text('Withdraw All',
                              style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            primary: CustomColors.primaryBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 15.0),
              SizedBox(height: 20),
              // Second Card
            ],
          ),
        ),
      ),
    );
  }
}
