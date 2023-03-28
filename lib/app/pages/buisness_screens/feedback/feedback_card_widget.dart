import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class FeedbackCard extends StatelessWidget {
  final Image? image;
  final String title;
  final String feedbackText;
  final String rating;
  const FeedbackCard(
      {super.key,
      required this.feedbackText,
      required this.rating,
      required this.title,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: CustomColors.shadowGrey,
                  radius: 24,
                  child: Icon(
                    Icons.person,
                    color: Colors.blue[800],
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const Spacer(),
                Column(
                  children: [
                    const Text("Overall"),
                    Row(
                      children: [
                        Text(rating),
                        Icon(
                          Icons.star,
                          color: Colors.blue[800],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 8),
            Text(
              feedbackText,
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}
