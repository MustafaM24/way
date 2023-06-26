import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/like_heart_button.dart';
import 'package:way/app/model/shop_ad_model.dart';
import 'package:way/app/pages/personal_screens/explore/recommended/card.dart';
import 'package:way/router/router.dart';
import 'package:way/router/router_arguments.dart';
import 'package:way/style/colors.dart';

// class TabsExplore extends StatelessWidget {
//   final List<ShopAdModel> exploretabslist;
//   const TabsExplore({super.key, required this.exploretabslist});

//   // TODO: This method provides the index of the liked Ad, use it to update the object list of shop ads
//   Future<bool?> onLikeButtonTapped(bool? isLiked, int index) async {
//     print(index);
//     return !isLiked!;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemBuilder: (context, index) => GestureDetector(
//               onTap: () => Navigator.pushNamed(context, shopPageScreenRoute,
//                   arguments: ShopDetailScreenArguments(index: index)),
//               child: Container(
//                 height: MediaQuery.of(context).size.height / 3.5,
//                 width: MediaQuery.of(context).size.width,
//                 margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
//                 padding: const EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   image: DecorationImage(
//                     image: AssetImage(exploretabslist[index].coverImage),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           exploretabslist[index].title,
//                           style: Theme.of(context)
//                               .textTheme
//                               .headlineSmall
//                               ?.copyWith(color: CustomColors.secondaryblack),
//                         ),
//                         LikeHeartIcon(
//                             isInitiallyLiked: false,
//                             onTap: (isLiked) =>
//                                 onLikeButtonTapped(isLiked, index))
//                       ],
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       exploretabslist[index].subtitle,
//                       style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                           color: CustomColors.secondaryblack,
//                           fontWeight: FontWeight.w600),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//         itemCount: exploretabslist.length);
//   }
// }

class TabsExplore extends StatelessWidget {
  final List<ShopAdModel> exploretabslist;
  const TabsExplore({super.key, required this.exploretabslist});

  Future<bool?> onLikeButtonTapped(bool? isLiked, int index) async {
    print(index);
    return !isLiked!;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              Text(
                "Recommended",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: CustomColors.secondaryblack,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: CustomColors.secondaryblack,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 220,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Recommended(
                  imgAssetPath: "assets/way/add1.png",
                  name: "Freaky's Shop",
                  address: "Kashim Way, Wuse zors 1, Abuja Nigeria",
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Recommended(
                  imgAssetPath: "assets/way/add2.png",
                  name: "Hair Salon",
                  address: "Kashim Way, Wuse zors 1, Abuja Nigeria",
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Recommended(
                  imgAssetPath: "assets/way/add3.png",
                  name: "Becky's Hair Salon",
                  address: "Kashim Way, Wuse zors 1, Abuja Nigeria",
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              shopPageScreenRoute,
              arguments: ShopDetailScreenArguments(index: index),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(exploretabslist[index].coverImage),
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
                        exploretabslist[index].title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: CustomColors.secondaryblack),
                      ),
                      LikeHeartIcon(
                          isInitiallyLiked: false,
                          onTap: (isLiked) =>
                              onLikeButtonTapped(isLiked, index))
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    exploretabslist[index].subtitle,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: CustomColors.secondaryblack,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          itemCount: exploretabslist.length,
        ),
      ],
    );
  }
}
