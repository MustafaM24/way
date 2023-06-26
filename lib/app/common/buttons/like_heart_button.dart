import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:like_button/like_button.dart';
import 'package:way/style/colors.dart';

class LikeHeartIcon extends StatelessWidget {
  final Future<bool?> Function(bool?) onTap;
  final Color color;
  final bool isInitiallyLiked;
  const LikeHeartIcon(
      {super.key,
      required this.onTap,
      this.color = Colors.white,
      this.isInitiallyLiked = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 52,
      child: LikeButton(
        isLiked: isInitiallyLiked,
        mainAxisAlignment: MainAxisAlignment.end,
        onTap: (isLiked) => onTap(isLiked),
        likeBuilder: (isLiked) => DecoratedIcon(
          icon: Icon(Icons.favorite_rounded,
              color: isLiked ? CustomColors.red : Colors.transparent, size: 24),
          decoration:
              IconDecoration(border: IconBorder(color: color, width: 2)),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:icon_decoration/icon_decoration.dart';
// import 'package:like_button/like_button.dart';
// import 'package:way/style/colors.dart';
// class LikeHeartIcon extends StatelessWidget {
//   final Future<bool?> Function(bool?) onTap;
//   const LikeHeartIcon({super.key, required this.onTap});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.transparent,
//       width: 52,
//       child: LikeButton(
//         onTap: (isLiked) => onTap(isLiked),
//         padding: const EdgeInsets.all(8),
//         likeBuilder: (isLiked) => DecoratedIcon(
//           icon: Icon(Icons.favorite_rounded,
//               color: isLiked ? CustomColors.red : Colors.transparent, size: 24),
//           decoration: const IconDecoration(
//               border: IconBorder(color: Colors.white, width: 2)),
//         ),
//       ),
//     );
//   }
// }
