import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/common/fields/input_field.dart';
import 'package:way/style/colors.dart';

class AddReviewScreen extends StatelessWidget {
  final TextEditingController _noteController = TextEditingController();

  void _handleAddReview() {
    // TODO: Handle adding the review
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),

        // title: Text('Add Review'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add Review',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.05,
                      backgroundImage: AssetImage("assets/car.jpg"),
                    ),
                    SizedBox(width: 10.0),
                    Text('Client',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0,
                        )),
                  ],
                ),
                SizedBox(height: 20.0),
                InputField(
                  labelText: "Enter your note here...",
                ),
                SizedBox(height: 30.0),
                PrimaryButton(
                  title: "Add",
                  onTap: () {
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //     builder: (context) => ChangePasswordScreen()));
                  },
                  color: CustomColors.primaryBlue,
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
