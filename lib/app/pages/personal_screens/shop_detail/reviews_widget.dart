// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class ReviewsWidget extends StatelessWidget {
//   const ReviewsWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text("Reviews Screen"));
//   }
// }

import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class ReviewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildReviewCard(
            'John Doe',
            'perfect salon for haircuts, the barbers are experts',
            'assets/way/box1.png',
          ),
          _buildReviewCard(
            'Jane Smith',
            'I always come here for my hair styling needs, never disappoints!',
            'assets/way/box2.png',
          ),
          _buildReviewCard(
            'Bob Johnson',
            'Friendly staff and great service!',
            'assets/way/box3.png',
          ),
        ],
      ),
    );
  }

  Widget _buildReviewCard(String name, String review, String imageUrl) {
    return Card(
      color: CustomColors.shadowGrey,
      margin: const EdgeInsets.all(16.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imageUrl),
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(review),
      ),
    );
  }
}
