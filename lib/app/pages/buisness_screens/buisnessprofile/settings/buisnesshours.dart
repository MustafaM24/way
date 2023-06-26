import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/pages/buisness_screens/menu/manageEmployee/addEmployee.dart';
import 'package:way/app/pages/personal_screens/book_an_appointment/appointment_Confirmation.dart';
import 'package:way/style/colors.dart';

class Buisnesshours extends StatefulWidget {
  const Buisnesshours({super.key});

  @override
  State<Buisnesshours> createState() => _BuisnesshoursState();
}

class _BuisnesshoursState extends State<Buisnesshours> {
  //TODO: these are the lists of Buisnesshours options

  String open = '8am';

  List<String> opening = [
    '5AM',
    '6AM',
    '7AM',
    '8AM',
    '9AM',
    '10AM',
    '11AM',
    '12PM',
    '1PM',
    '2PM',
    '3PM',
    '4PM',
    '5PM',
    '6PM',
    '7PM',
    '8PM',
    '9PM',
    '10PM',
    '11PM',
    '12AM',
  ];

  String close = '8am';

  List<String> closing = [
    '5AM',
    '6AM',
    '7AM',
    '8AM',
    '9AM',
    '10AM',
    '11AM',
    '12PM',
    '1PM',
    '2PM',
    '3PM',
    '4PM',
    '5PM',
    '6PM',
    '7PM',
    '8PM',
    '9PM',
    '10PM',
    '11PM',
    '12AM',
  ];

  String choose = 'open';

  List<String> choosing = [
    'open',
    'close',
  ];

// class Buisnesshours extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        title: Text('Buisness Hours',
            style: TextStyle(
              color: Color(0xFF000000),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            )),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(5, 16, 5, 16),
                children: [
                  TimeCards(
                    name: 'Monday',
                    age: 45,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  SizedBox(height: 20),
                  TimeCards(
                    name: 'Tuesday',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  SizedBox(height: 20),
                  TimeCards(
                    name: 'Wednesday',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  SizedBox(height: 20),
                  TimeCards(
                    name: 'Thursday',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  SizedBox(height: 20),
                  TimeCards(
                    name: 'Friday',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  SizedBox(height: 20),
                  TimeCards(
                    name: 'Saturday',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  SizedBox(height: 20),
                  TimeCards(
                    name: 'Sunday',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  // Add more employee cards here as needed
                  SizedBox(height: 100),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(
                        //     builder: (context) => const BuisnessLogin()));
                        // onTap:
                        // () => Navigator.pushReplacementNamed(
                        //     context, personalLoginScreenRoute);
                        // navigate to screen
                        // onTap:
                        // () => Navigator.pushReplacementNamed(
                        //     context, personalLoginScreenRoute);
                      },
                      child: Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w900),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: CustomColors.primaryBlue,
                        padding: EdgeInsets.symmetric(
                          horizontal: 65,
                          vertical: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeCards extends StatelessWidget {
  final String name;
  final int age;
  final String imageUrl;

  const TimeCards({
    Key? key,
    required this.name,
    required this.age,
    required this.imageUrl,
  }) : super(key: key);

  @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: CustomColors.primaryBlue,
//         borderRadius: BorderRadius.circular(7),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       name,
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.primaryBlue,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                      height: 30,
                      // width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: DropdownButton<String>(
                          value: 'open',
                          items: [
                            DropdownMenuItem<String>(
                              value: 'open',
                              child: Text('open'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'close',
                              child: Text('close'),
                            ),
                          ],
                          onChanged: (String? value) {},
                          underline: Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                      height: 40,
                      // width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: DropdownButton<String>(
                          value: '8am',
                          items: [
                            DropdownMenuItem<String>(
                              value: '8am',
                              child: Text('8am'),
                            ),
                            DropdownMenuItem<String>(
                              value: '9am',
                              child: Text('9am'),
                            ),
                            DropdownMenuItem<String>(
                              value: '10am',
                              child: Text('10am'),
                            ),
                            DropdownMenuItem<String>(
                              value: '11am',
                              child: Text('11am'),
                            ),
                            DropdownMenuItem<String>(
                              value: '12am',
                              child: Text('12am'),
                            ),
                            DropdownMenuItem<String>(
                              value: '1pm',
                              child: Text('1pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '2pm',
                              child: Text('2pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '3pm',
                              child: Text('3pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '4pm',
                              child: Text('4pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '5pm',
                              child: Text('5pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '6pm',
                              child: Text('6pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '7pm',
                              child: Text('7pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '8pm',
                              child: Text('8pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '9pm',
                              child: Text('9pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '10pm',
                              child: Text('10pm'),
                            ),
                          ],
                          onChanged: (String? value) {},
                          underline: Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                      height: 40,
                      // width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: DropdownButton<String>(
                          value: '8am',
                          items: [
                            DropdownMenuItem<String>(
                              value: '8am',
                              child: Text('8am'),
                            ),
                            DropdownMenuItem<String>(
                              value: '9am',
                              child: Text('9am'),
                            ),
                            DropdownMenuItem<String>(
                              value: '10am',
                              child: Text('10am'),
                            ),
                            DropdownMenuItem<String>(
                              value: '11am',
                              child: Text('11am'),
                            ),
                            DropdownMenuItem<String>(
                              value: '12am',
                              child: Text('12am'),
                            ),
                            DropdownMenuItem<String>(
                              value: '1pm',
                              child: Text('1pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '2pm',
                              child: Text('2pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '3pm',
                              child: Text('3pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '4pm',
                              child: Text('4pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '5pm',
                              child: Text('5pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '6pm',
                              child: Text('6pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '7pm',
                              child: Text('7pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '8pm',
                              child: Text('8pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '9pm',
                              child: Text('9pm'),
                            ),
                            DropdownMenuItem<String>(
                              value: '10pm',
                              child: Text('10pm'),
                            ),
                          ],
                          onChanged: (String? value) {},
                          underline: Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
