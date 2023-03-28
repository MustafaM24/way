import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/like_heart_button.dart';
import 'package:way/app/pages/personal_screens/shop_detail/details_widget.dart';
import 'package:way/app/pages/personal_screens/shop_detail/portfolio_widget.dart';
import 'package:way/app/pages/personal_screens/shop_detail/reviews_widget.dart';
import 'package:way/app/pages/personal_screens/shop_detail/services_widget.dart';
import 'package:way/style/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ShopDetailScreen extends StatefulWidget {
  final int indexOfShopAd;
  ShopDetailScreen({super.key, required this.indexOfShopAd});

  @override
  State<ShopDetailScreen> createState() => _ShopDetailScreenState();
}

class _ShopDetailScreenState extends State<ShopDetailScreen>
    with TickerProviderStateMixin {
  // TODO: This is demo list of images, you would need a list of images from Backend
  final List<String> images = ["car.jpg", "cat.jpg", "tree.jpg"];

  // TODO: you would need to fetch rating and revieCount values from Backend
  final double rating = 5.0;

  final int reviewCount = 249;

  // TODO: This method provides the index of the liked Ad, use it to update the object list of shop ads
  Future<bool?> onLikeButtonTapped(bool? isLiked, int index) async {
    print(index);
    return !isLiked!;
  }

  @override
  Widget build(BuildContext context) {
    TabController tabBarController = TabController(length: 4, vsync: this);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 8, top: 20),
                  child: CarouselSlider.builder(
                    itemCount: images.length,
                    itemBuilder: (context, index, realIndex) => Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage("assets/${images[index]}"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: ReviewBox(
                                rating: rating, reviewCount: reviewCount))),
                    options: CarouselOptions(
                      padEnds: false,
                      viewportFraction: 0.9,
                      scrollPhysics: const BouncingScrollPhysics(),
                      enableInfiniteScroll: false,
                      height: MediaQuery.of(context).size.height / 2.8,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Freaky's Shop",
                            style: Theme.of(context).textTheme.headlineSmall),
                        LikeHeartIcon(
                            color: Colors.black,
                            onTap: (isLiked) => onLikeButtonTapped(
                                isLiked, widget.indexOfShopAd))
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text("Kashim Way, Wuse zors 1, Abuja Nigeria",
                        style: Theme.of(context).textTheme.bodyLarge),
                    const SizedBox(height: 12),
                    TabBar(
                        controller: tabBarController,
                        labelColor: CustomColors.primaryMaroon,
                        unselectedLabelColor: CustomColors.secondaryblack,
                        labelPadding: EdgeInsets.zero,
                        indicatorColor: Colors.transparent,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: const [
                          Tab(text: "SERVICES"),
                          Tab(text: "PORTFOLIO"),
                          Tab(text: "DETAILS"),
                          Tab(text: "REVIEWS")
                        ]),
                    const Divider(
                      color: CustomColors.secondaryblack,
                      height: 1,
                      thickness: 1,
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      width: double.maxFinite,
                      child: TabBarView(
                          controller: tabBarController,
                          children: [
                            ServicesWidget(),
                            PortfolioWidget(),
                            DetailsWidget(),
                            ReviewsWidget()
                          ]),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

//Helper widget
class ReviewBox extends StatelessWidget {
  final double rating;
  final int reviewCount;
  const ReviewBox({super.key, required this.rating, required this.reviewCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          color: CustomColors.disableGrey,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      height: MediaQuery.of(context).size.height / 14,
      child: Column(
        children: [
          Text(
            "$rating",
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          const SizedBox(height: 8),
          // ignore: unnecessary_const
          Text(
            "$reviewCount reviews",
            style: const TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:way/app/common/buttons/like_heart_button.dart';
// import 'package:way/app/pages/personal_screens/shop_detail/details_widget.dart';
// import 'package:way/app/pages/personal_screens/shop_detail/portfolio_widget.dart';
// import 'package:way/app/pages/personal_screens/shop_detail/reviews_widget.dart';
// import 'package:way/app/pages/personal_screens/shop_detail/services_widget.dart';
// import 'package:way/style/colors.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class ShopDetailScreen extends StatefulWidget {
//   final int indexOfShopAd;
//   ShopDetailScreen({super.key, required this.indexOfShopAd});

//   @override
//   State<ShopDetailScreen> createState() => _ShopDetailScreenState();
// }

// class _ShopDetailScreenState extends State<ShopDetailScreen>
//     with TickerProviderStateMixin {
//   // TODO: This is demo list of images, you would need a list of images from Backend
//   final List<String> images = ["car.jpg", "cat.jpg", "tree.jpg"];

//   // TODO: you would need to fetch rating and revieCount values from Backend
//   final double rating = 5.0;

//   final int reviewCount = 249;

//   // TODO: This method provides the index of the liked Ad, use it to update the object list of shop ads
//   Future<bool?> onLikeButtonTapped(bool? isLiked, int index) async {
//     print(index);
//     return !isLiked!;
//   }

//   @override
//   Widget build(BuildContext context) {
//     TabController tabBarController = TabController(length: 4, vsync: this);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//           elevation: 0,
//           iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
//       ),
//       body: Column(
//         children: [
//           Padding(
//               padding: const EdgeInsets.only(left: 8, top: 20),
//               child: CarouselSlider.builder(
//                 itemCount: images.length,
//                 itemBuilder: (context, index, realIndex) => Container(
//                     width: double.infinity,
//                     margin: const EdgeInsets.symmetric(horizontal: 4),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       image: DecorationImage(
//                         image: AssetImage("assets/${images[index]}"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     child: Align(
//                         alignment: Alignment.topRight,
//                         child: ReviewBox(
//                             rating: rating, reviewCount: reviewCount))),
//                 options: CarouselOptions(
//                   padEnds: false,
//                   viewportFraction: 0.9,
//                   scrollPhysics: const BouncingScrollPhysics(),
//                   enableInfiniteScroll: false,
//                   height: MediaQuery.of(context).size.height / 2.8,
//                 ),
//               )),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Freaky's Shop",
//                         style: Theme.of(context).textTheme.headlineSmall),
//                     LikeHeartIcon(
//                         color: Colors.black,
//                         onTap: (isLiked) =>
//                             onLikeButtonTapped(isLiked, widget.indexOfShopAd))
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//                 Text("Kashim Way, Wuse zors 1, Abuja Nigeria",
//                     style: Theme.of(context).textTheme.bodyLarge),
//                 const SizedBox(height: 12),
//                 TabBar(
//                     controller: tabBarController,
//                     labelColor: CustomColors.primaryMaroon,
//                     unselectedLabelColor: CustomColors.secondaryblack,
//                     labelPadding: EdgeInsets.zero,
//                     indicatorColor: Colors.transparent,
//                     indicatorSize: TabBarIndicatorSize.label,
//                     tabs: const [
//                       Tab(text: "SERVICES"),
//                       Tab(text: "PORTFOLIO"),
//                       Tab(text: "DETAILS"),
//                       Tab(text: "REVIEWS")
//                     ]),
//                 const Divider(
//                   color: CustomColors.secondaryblack,
//                   height: 1,
//                   thickness: 1,
//                 ),
//                 const SizedBox(height: 12),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height / 3,
//                   width: double.maxFinite,
//                   child: TabBarView(controller: tabBarController, children: [
//                     ServicesWidget(),
//                     PortfolioWidget(),
//                     DetailsWidget(),
//                     ReviewsWidget()
//                   ]),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// //Helper widget
// class ReviewBox extends StatelessWidget {
//   final double rating;
//   final int reviewCount;
//   const ReviewBox({super.key, required this.rating, required this.reviewCount});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(4),
//       margin: const EdgeInsets.all(8),
//       decoration: const BoxDecoration(
//           color: CustomColors.disableGrey,
//           borderRadius: BorderRadius.all(Radius.circular(8))),
//       height: MediaQuery.of(context).size.height / 14,
//       child: Column(
//         children: [
//           Text(
//             "$rating",
//             style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
//           ),
//           const SizedBox(height: 8),
//           // ignore: unnecessary_const
//           Text(
//             "$reviewCount reviews",
//             style: const TextStyle(fontSize: 11),
//           )
//         ],
//       ),
//     );
//   }
// }
