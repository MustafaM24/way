import 'package:flutter/material.dart';
import 'package:way/app/pages/buisness_screens/feedback/feedback_card_widget.dart';
import 'package:way/router/router.dart';
import 'package:way/router/router_arguments.dart';
import 'package:way/style/colors.dart';
// import 'package:way/pages/business_screens/feedback/feedback_card_widget.dart';
import 'package:way/app/model/feedback_model.dart';

class CustomerFeedbackScreen extends StatelessWidget {
  CustomerFeedbackScreen({super.key});

// TODO: This is a custom list of Feedback Model object, fetch data from backend and populate this list
  final List<FeedbackModel> feedbacks = [
    FeedbackModel(
        feedbackText:
            "Nice outdoorcourts, solid concrete and good hoops for the neighborhood",
        rating: "5",
        title: "Client"),
    FeedbackModel(
        feedbackText:
            "Nice outdoorcourts, solid concrete and good hoops for the neighborhood",
        rating: "5",
        title: "Client")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: CustomColors.secondaryblack,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        itemCount: feedbacks.length,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, feedbackReplyScreenRoute,
                  arguments:
                      FeedbackReplyScreenArguments(details: feedbacks[index]));
            },
            child: FeedbackCard(
              feedbackText: feedbacks[index].feedbackText,
              rating: feedbacks[index].rating,
              title: feedbacks[index].title,
            )),
      ),
    );
  }
}
