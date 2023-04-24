import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/pages/buisness_screens/menu/manageEmployee/addEmployee.dart';
import 'package:way/style/colors.dart';

class ManageEmployeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),

        title: Text('Manage Employees',
            style: TextStyle(
              color: Color(0xFF000000),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            )),
        centerTitle: true,
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
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.fromLTRB(5, 16, 5, 16),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1,
                children: [
                  EmployeeCard(
                    name: 'John Doe',
                    age: 45,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  EmployeeCard(
                    name: 'Jane Smith',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  EmployeeCard(
                    name: 'Bob Smith',
                    age: 28,
                    imageUrl: 'assets/cat.jpg',
                  ),
                  // Add more employee cards here as needed
                ],
              ),
            ),
            PrimaryButton(
              vertPadding: 20,
              horizPadding: 90,
              title: 'Remove Employee',
              onTap: () {
                // Navigator.of(context).pushReplacement(MaterialPageRoute(
                //     builder: (context) => const ));
                // TODO: Implement save functionality
              },
              color: CustomColors.primaryBlue,
              width: MediaQuery.of(context).size.width / 1.2,
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
        color: CustomColors.primaryBlue,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageUrl),
          ),
          SizedBox(height: 16),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Barber",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 5),
          Text(
            '$age',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
