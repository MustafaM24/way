import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/pages/buisness_screens/menu/wallet/card.dart';
import 'package:way/style/colors.dart';

class Deposits extends StatefulWidget {
  const Deposits({Key? key}) : super(key: key);

  @override
  _DepositsState createState() => _DepositsState();
}

class _DepositsState extends State<Deposits> {
  bool isDepositSelected = true;

  void _selectDeposit() {
    setState(() {
      isDepositSelected = true;
    });
  }

  void _selectWithdrawal() {
    setState(() {
      isDepositSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF000000)),
        title: const Text('Wallet',
            style: TextStyle(
              color: Color(0xFF000000),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            )),
        centerTitle: true,
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
                          showDialog(
                              context: context,
                              builder: (context) => Center(
                                    child: SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              1.5,
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      child: WithdrawPopUp(
                                          // onAccept: acceptPressed,
                                          // onDecline: declinePressed,
                                          ),
                                    ),
                                  ));
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => Withdrawing()));
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
                    onPressed:
                        _selectDeposit, //isDepositSelected ? null : _selectDeposit,
                    child: Text('Deposits'),
                    style: ElevatedButton.styleFrom(
                      primary: isDepositSelected
                          ? CustomColors.primaryBlue
                          : Colors.grey[600],
                    ),
                  ),
                  SizedBox(width: 80),
                  ElevatedButton(
                    onPressed: _selectWithdrawal,
                    child: Text('Withdrawals'),
                    style: ElevatedButton.styleFrom(
                      primary: isDepositSelected
                          ? Colors.grey[600]
                          : CustomColors.primaryBlue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Second Card
              Column(
                children: [
                  WalletCard(
                    name: 'John Doe',
                    age: 45,
                    imageUrl: 'assets/cat.jpg',
                    isPositive: isDepositSelected,
                    isDeposit: isDepositSelected,
                    // onTap: () {
                    //   setState(() {
                    //     isDepositSelected = false;
                    //   });
                    // },
                  ),
                  SizedBox(height: 20),
                  WalletCard(
                    name: 'Jane Smith',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                    isPositive: isDepositSelected,
                    isDeposit: isDepositSelected,
                    // onTap: () {
                    //   setState(() {
                    //     isDeposit = false;
                    //   });
                    // },
                  ),
                  SizedBox(height: 20),
                  WalletCard(
                    name: 'Bob Smith',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                    isPositive: isDepositSelected,
                    isDeposit: isDepositSelected,
                    // onTap: () {
                    //   setState(() {
                    //     isDeposit = false;
                    //   });
                    // },
                  ),
                  // Add more employee cards here as needed
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//helper widget to show pop up card
class WithdrawPopUp extends StatelessWidget {
  // final Function onAccept;
  // final Function onDecline;
  const WithdrawPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
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
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.close_outlined)),
                  ),
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
                      fillColor: Colors.white, // set background color to white
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
    );
    // return SizedBox(
    //   width: MediaQuery.of(context).size.width / 1.3,
    //   child: Card(
    //     elevation: 2.4,
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(vertical: 0),
    //       child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Align(
    //               alignment: Alignment.topRight,
    //               child: IconButton(
    //                   onPressed: () => Navigator.of(context).pop(),
    //                   icon: const Icon(Icons.close_outlined)),
    //             ),
    //             Text(
    //               "Joseph CLient",
    //               style: Theme.of(context)
    //                   .textTheme
    //                   .labelLarge
    //                   ?.copyWith(height: 1.4),
    //             ),
    //             Text(
    //               "Haircut",
    //               style: Theme.of(context)
    //                   .textTheme
    //                   .labelLarge
    //                   ?.copyWith(height: 1.4),
    //             ),
    //             Text(
    //               "Note from client",
    //               style: Theme.of(context).textTheme.bodyLarge,
    //             ),
    //             Text(
    //               "EmployeeName",
    //               style: Theme.of(context)
    //                   .textTheme
    //                   .labelLarge
    //                   ?.copyWith(height: 1.4),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(bottom: 20),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                 children: [
    //                   // PrimaryButton(
    //                   //   width: 102,
    //                   //   height: 48,
    //                   //   title: "Decline",
    //                   //   onTap: () => onDecline(),
    //                   //   color: const Color.fromARGB(209, 244, 67, 54),
    //                   // ),
    //                   // PrimaryButton(
    //                   //   width: 102,
    //                   //   height: 48,
    //                   //   title: "Accept",
    //                   //   onTap: () => onAccept(),
    //                   //   color: CustomColors.green,
    //                   // )
    //                 ],
    //               ),
    //             )
    //           ]),
    //     ),
    //   ),
    // );
  }
}
