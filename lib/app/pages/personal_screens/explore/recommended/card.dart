// import 'package:flutter/material.dart';

// class Recommended extends InkWell {
//   final String imgAssetPath;
//   final String name;
//   final int address;
//   final Color backColor;

//   Recommended({
//     required this.imgAssetPath,
//     required this.name,
//     required this.address,
//     required this.backColor,
//     required GestureTapCallback onTap,
//   }) : super(onTap: onTap);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         width: 173,
//         child: Card(
//           color: backColor,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(24),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   name,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                   ),
//                 ),
//                 SizedBox(height: 6),
//                 Text(
//                   "$address Doctors",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 13,
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 Expanded(
//                   child: Image.asset(
//                     imgAssetPath,
//                     fit: BoxFit.fitHeight,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class Recommended extends StatelessWidget {
  final String imgAssetPath;
  final String name;
  final String address;
  final GestureTapCallback onTap;

  const Recommended({
    required this.imgAssetPath,
    required this.name,
    required this.address,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      // child: Container(
      // width: MediaQuery.of(context).size.width / 1.30,
      // margin: EdgeInsets.symmetric(horizontal: 7),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(24),
      //   color: backColor,
      // ),
      // child: Row(
      //   children: <Widget>[
      child: Container(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width / 1.30,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(imgAssetPath),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              "$address Doctors",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: CustomColors.secondaryblack,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
