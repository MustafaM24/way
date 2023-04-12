import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/pages/buisness_screens/menu/manageEmployee/addEmployee.dart';
import 'package:way/app/pages/personal_screens/book_an_appointment/appointment_Confirmation.dart';
import 'package:way/style/colors.dart';

class ManageEmployeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),

        // title: Text('Manage Employees'),
        // centerTitle: true,
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.add),
        //     onPressed: () {
        //       // TODO: Implement add new employee functionality
        //     },
        //   ),
        // ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryButton(
              vertPadding: 20,
              horizPadding: 60,
              title: 'Add New Employee',
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const AddEmployeeScreen()));
                // TODO: Implement save functionality
              },
              color: CustomColors.primaryBlue,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
            // SizedBox(height: 16),
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(5, 16, 5, 16),
                children: [
                  EmployeeCard(
                    name: 'John Doe',
                    age: 45,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  SizedBox(height: 20),
                  EmployeeCard(
                    name: 'Jane Smith',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  SizedBox(height: 20),
                  EmployeeCard(
                    name: 'Bob Smith',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  // Add more employee cards here as needed
                ],
              ),
              // child: GridView.count(
              //   crossAxisCount: 2,
              //   padding: EdgeInsets.fromLTRB(5, 16, 5, 16),
              //   mainAxisSpacing: 20,
              //   crossAxisSpacing: 20,
              //   childAspectRatio: 1,
              //   children: [
              //     EmployeeCard(
              //       name: 'John Doe',
              //       age: 45,
              //       imageUrl: 'assets/cat.jpg',
              //     ),
              //     EmployeeCard(
              //       name: 'Jane Smith',
              //       age: 28,
              //       imageUrl: 'assets/cat.jpg',
              //     ),
              //     EmployeeCard(
              //       name: 'Bob Smith',
              //       age: 28,
              //       imageUrl: 'assets/cat.jpg',
              //     ),
              //     // Add more employee cards here as needed
              //   ],
              // ),
            ),
          ],
        ),
      ),
      // GridView.count(
      //   crossAxisCount: 2,
      //   padding: EdgeInsets.all(16),
      //   mainAxisSpacing: 20,
      //   crossAxisSpacing: 20,
      //   childAspectRatio: 1,
      //   children: [
      //     EmployeeCard(
      //       name: 'John Doe',
      //       age: 45,
      //       imageUrl: 'assets/cat.jpg',
      //     ),
      //     EmployeeCard(
      //       name: 'Jane Smith',
      //       age: 28,
      //       imageUrl: 'assets/cat.jpg',
      //     ),
      //     EmployeeCard(
      //       name: 'Bob Smith',
      //       age: 28,
      //       imageUrl: 'assets/cat.jpg',
      //     ),
      //     // Add more employee cards here as needed
      //   ],
      // ),
    );
  }
}

class EmployeeCard extends StatelessWidget {
  final String name;
  final int age;
  final String imageUrl;

  const EmployeeCard({
    Key? key,
    required this.name,
    required this.age,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(39, 165, 165, 165),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            // CircleAvatar(
            //   radius: 30,
            //   backgroundImage: AssetImage(imageUrl),
            // ),
            // SizedBox(height: 16),
            // Text(
            //   name,
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontWeight: FontWeight.w900,
            //     fontSize: 14,
            //   ),
            // ),
            // SizedBox(height: 5),
            // Text(
            //   "Barber",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontWeight: FontWeight.w900,
            //     fontSize: 14,
            //   ),
            // ),
            // SizedBox(height: 5),
            // Text(
            //   '$age',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 12,
            //     fontWeight: FontWeight.w900,
            //   ),
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Smith",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // SizedBox(height: 2),
                    // Text(
                    //   "+ taxes/fee",
                    //   style: TextStyle(
                    //     fontSize: 12,
                    //     color: Color(0xFF373C43),
                    //   ),
                    // ),
                    SizedBox(height: 10),
                    Text(
                      "NGN 5000",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "23/03/2023",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF000000),
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "12:30",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF373C43),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Employee Name:",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF000000),
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(imageUrl),
                    ),
                  ],
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     primary: CustomColors.primaryBlue,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(5),
                //     ),
                //     padding: EdgeInsets.zero,
                //   ),
                //   onPressed: () {
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => AppointmentBookedScreen()));

                //     // add function to store in database
                //     // For me
                //     //TODO: write navigation here.
                //   },
                //   child: Container(
                //     width: 100,
                //     height: 40,
                //     child: Center(
                //       child: Text(
                //         "Book Now",
                //         style: TextStyle(
                //           fontSize: 12,
                //           color: Color(0xFFFFFFFF),
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
