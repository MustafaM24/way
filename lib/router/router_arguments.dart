import 'package:way/app/model/feedback_model.dart';

class ShopDetailScreenArguments {
  final int index;
  ShopDetailScreenArguments({
    required this.index,
  });
}

class FeedbackReplyScreenArguments {
  final FeedbackModel details;
  FeedbackReplyScreenArguments({required this.details});
}
