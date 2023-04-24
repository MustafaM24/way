import 'package:flutter/material.dart';

class FeedbackModel {
  final Image? image;
  final String title;
  final String rating;
  final String feedbackText;
  FeedbackModel(
      {required this.feedbackText,
      required this.rating,
      required this.title,
      this.image});
}
