import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// class PortfolioWidget extends StatelessWidget {
//   const PortfolioWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text("Portfolio Screen"));
//   }
// }

// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class PortfolioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Image Screen'),
      // ),
      body: GridView.count(
        crossAxisCount: 2, // 2 picture boxes per row
        children: [
          _buildImageBox('assets/way/box1.png'),
          _buildImageBox('assets/way/box2.png'),
          _buildImageBox('assets/way/box3.png'),
          _buildImageBox('assets/way/box3.png'),
          _buildImageBox('assets/way/box5.png'),
          _buildImageBox('assets/way/box5.png'),
        ],
      ),
    );
  }

  Widget _buildImageBox(String imagePath) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
