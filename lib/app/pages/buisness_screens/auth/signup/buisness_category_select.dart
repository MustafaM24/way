// import 'package:flutter/material.dart';
// import 'package:way/app/common/buttons/primary_button.dart';

// class BusinessCategoryScreen extends StatefulWidget {
//   @override
//   _BusinessCategoryScreenState createState() => _BusinessCategoryScreenState();
// }

// class _BusinessCategoryScreenState extends State<BusinessCategoryScreen> {
//   List<String> _selectedCategories = [];

//   void _toggleCategorySelection(String category) {
//     setState(() {
//       if (_selectedCategories.contains(category)) {
//         _selectedCategories.remove(category);
//       } else {
//         _selectedCategories.add(category);
//       }
//     });
//   }

//   void _handleNextButtonPressed() {
//     // TODO: Implement navigation to the next screen
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Business Category'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Text(
//               'What\'s your business category?',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               'Choose your business category to enable your clients to find you easily.',
//               style: TextStyle(
//                 fontSize: 16.0,
//               ),
//             ),
//             SizedBox(height: 12.0),
//             Wrap(
//               spacing: 8.0,
//               runSpacing: 8.0,
//               children: <Widget>[
//                 _buildSelectableButton('Barber Shop'),
//                 _buildSelectableButton('Hair Salon'),
//                 _buildSelectableButton('Beauty Salon'),
//                 _buildSelectableButton('Spa'),
//                 _buildSelectableButton('Nail Salon'),
//                 _buildSelectableButton('More'),
//               ],
//             ),
//             SizedBox(height: 20.0),
//             PrimaryButton(
//               title: 'Next',
//               onTap: _handleNextButtonPressed,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSelectableButton(String text) {
//     final bool isSelected = _selectedCategories.contains(text);
//     return ElevatedButton(
//       onPressed: () => _toggleCategorySelection(text),
//       child: Text(
//         text,
//         style: TextStyle(
//           color: isSelected ? Colors.white : Colors.black,
//         ),
//       ),
//       style: ElevatedButton.styleFrom(
//         primary: isSelected ? Colors.black : Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.0),
//           side: BorderSide(
//             color: Colors.black,
//             width: isSelected ? 0 : 1,
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// // import 'package:project/constants/colors.dart';
// // import 'package:project/widgets/primary_button.dart';
// import 'package:way/app/common/buttons/primary_button.dart';
// import 'package:way/style/colors.dart';

// class BusinessCategoryScreen extends StatefulWidget {
//   @override
//   _BusinessCategoryScreenState createState() => _BusinessCategoryScreenState();
// }

// class _BusinessCategoryScreenState extends State<BusinessCategoryScreen> {
//   // Define a list to hold the selected categories
//   List<String> _selectedCategories = [];

//   @override
//   Widget build(BuildContext context) {
//     // Use Scaffold to create the app screen layout
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: CustomColors.transparent,
//         iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
//         // title: Text('Business Category',
//         // style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             // Add the category heading and description
//             Text(
//               "What's your business category?",
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
//             ),
//             SizedBox(height: 10),
//             Text(
//               "Choose your business category to enable your clients to find you easily.",
//               style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 13.0,
//                   fontWeight: FontWeight.w900),
//             ),
//             SizedBox(height: 12),

//             // Create a button for each category
//             buildCategoryButton("Barber Shop"),
//             SizedBox(height: 12),
//             buildCategoryButton("Hair Salon"),
//             SizedBox(height: 12),
//             buildCategoryButton("Beauty Salon"),
//             SizedBox(height: 12),
//             buildCategoryButton("Spa"),
//             SizedBox(height: 12),
//             buildCategoryButton("Nail Salon"),
//             SizedBox(height: 12),
//             buildCategoryButton("More"),

//             SizedBox(height: 20),

//             // Add a button to move to the next screen
//             PrimaryButton(
//               vertPadding: 20,
//               title: "Next",
//               onTap: onNext,
//               color: CustomColors.secondaryblack,
//               width: MediaQuery.of(context).size.width / 1.2,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Build a shadowed button for a given category name
//   Widget buildCategoryButton(String categoryName) {
//     // Check if the category is already selected
//     bool isSelected = _selectedCategories.contains(categoryName);

//     // Return a Material widget with shadow and elevation for the button
//     return Material(
//       elevation: 0,
//       shadowColor: Colors.grey,
//       child: InkWell(
//         onTap: () {
//           // Update the selected categories list
//           setState(() {
//             if (isSelected) {
//               _selectedCategories.remove(categoryName);
//             } else {
//               _selectedCategories.add(categoryName);
//             }
//           });
//         },
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//           decoration: BoxDecoration(
//             color: isSelected ? CustomColors.primaryBlue : Colors.white,
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 categoryName,
//                 style: TextStyle(
//                   color: isSelected ? Colors.white : Colors.black,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               isSelected
//                   ? Icon(
//                       Icons.check,
//                       color: Colors.white,
//                     )
//                   : Container(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Move to the next screen
//   void onNext() {
//     // TODO: Navigate to the next screen
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/pages/buisness_screens/auth/signup/addservice.dart';
import 'package:way/style/colors.dart';

class BusinessCategoryScreen extends StatefulWidget {
  @override
  _BusinessCategoryScreenState createState() => _BusinessCategoryScreenState();
}

class _BusinessCategoryScreenState extends State<BusinessCategoryScreen> {
  // Define a list to hold the selected categories
  List<String> _selectedCategories = [];

  @override
  Widget build(BuildContext context) {
    // Use Scaffold to create the app screen layout
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Add the category heading and description
            Text(
              "What's your business category?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 10),
            Text(
              "Choose your business category to enable your clients to find you easily.",
              style: TextStyle(
                  color: Color(0xFF7E7E7E),
                  fontSize: 13.0,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 12),

            // Create a button for each category
            buildCategoryButton("Barber Shop"),
            SizedBox(height: 12),
            buildCategoryButton("Hair Salon"),
            SizedBox(height: 12),
            buildCategoryButton("Home Cleaning"),
            SizedBox(height: 12),
            buildCategoryButton("Spa"),
            SizedBox(height: 12),
            buildCategoryButton("Nail Salon"),
            SizedBox(height: 12),
            buildCategoryButton("Tattoo & Piercing"),
            SizedBox(height: 12),
            buildCategoryButton("Plumbing"),
            SizedBox(height: 12),
            buildCategoryButton("Electrical Services"),
            SizedBox(height: 12),
            buildCategoryButton("Applicance Repair"),
            SizedBox(height: 12),
            buildCategoryButton("HVAC (Heating, Ventilation & Air Con)"),

            SizedBox(height: 20),

            // Add a button to move to the next screen
            PrimaryButton(
              vertPadding: 20,
              title: "Next",
              onTap: onNext,
              color: CustomColors.primaryBlue,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ],
        ),
      ),
    );
  }

  // Build a shadowed button for a given category name
  Widget buildCategoryButton(String categoryName) {
    // Check if the category is already selected
    bool isSelected = _selectedCategories.contains(categoryName);

    // Return a Material widget with shadow and elevation for the button
    return Material(
      elevation: 5,
      shadowColor: Colors.white,
      child: InkWell(
        onTap: () {
          // Update the selected categories list
          setState(() {
            if (isSelected) {
              _selectedCategories.remove(categoryName);
            } else {
              _selectedCategories.add(categoryName);
            }
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color:
                isSelected ? CustomColors.primaryBlue : CustomColors.shadowGrey,
            borderRadius: BorderRadius.circular(0),
          ),
          child: Center(
            child: Text(
              categoryName,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  // Move to the next screen
  void onNext() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => AddServicePage()));
    // TODO: Navigate to the next screen
  }
}
