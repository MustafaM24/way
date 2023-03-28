import 'package:flutter/material.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/BuisnessFAQ.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/settings/location.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/settings/notification.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/settings/payment.dart';
import 'package:way/router/router.dart';
import 'package:way/style/colors.dart';

class BuisnessSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                  children: [
                    _buildButton(context, 'LOCATION', Location()),
                    _buildButton(context, 'SETTINGS', PaymentSettingsScreen()),
                    _buildButton(context, 'FAQs', Notifications()),
                    _buildButton(context, 'CONTACT US', BuisnessFAQsPage()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Widget route) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *
          0.4, // Set width to 40% of the screen width
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}



// class BuisnessSettings extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: CustomColors.transparent,
//           iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
//         ),
//         body: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               children: [
//                 SizedBox(height: 40),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     _buildButton(context, 'LOCATION', Location()),
//                     // _buildButton(context, 'ACCOUNT DETAILS'),
//                     SizedBox(width: 3),
//                     _buildButton(
//                         context, 'PAYMENT SETTINGS', PaymentSettingsScreen()),
//                   ],
//                 ),
//                 SizedBox(height: 3),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     _buildButton(context, 'NOTIFICATIONS', Notifications()),
//                     SizedBox(width: 3),
//                     _buildButton(context, "FAQ'S", BuisnessFAQsPage()),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }

//   Widget _buildButton(BuildContext context, String text, Widget route) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => route),
//         );
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.circular(5),
//         ),
//         height: 200,
//         width: 200,
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.w900,
//               fontSize: 14,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
