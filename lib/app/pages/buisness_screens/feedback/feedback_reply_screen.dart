import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/common/fields/input_field.dart';
import 'package:way/app/model/feedback_model.dart';
import 'package:way/app/pages/buisness_screens/feedback/feedback_card_widget.dart';
import 'package:way/style/colors.dart';

class FeedbackReplyScreen extends StatelessWidget {
  final FeedbackModel details;
  const FeedbackReplyScreen({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        ),
        body: Column(
          children: [
            FeedbackCard(
                feedbackText: details.feedbackText,
                rating: details.rating,
                title: details.title),
            // Text("Add Reply Widget here...."),
            Padding(
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
                        'Reply',
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
                          Text('Buisness',
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
                        color: Color(0xFF000000),
                        width: MediaQuery.of(context).size.width / 1.2,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
