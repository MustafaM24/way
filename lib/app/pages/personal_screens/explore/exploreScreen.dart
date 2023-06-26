// import 'package:flutter/material.dart';
// import 'package:way/app/common/buttons/like_heart_button.dart';
// import 'package:way/app/common/fields/input_field.dart';
// import 'package:way/router/router.dart';
// import 'package:way/router/router_arguments.dart';
// import 'package:way/style/colors.dart';

// // TODO: Backend code here to fetch listigs data

// class ExploreScreen extends StatefulWidget {
//   const ExploreScreen({super.key});

//   @override
//   State<ExploreScreen> createState() => _ExploreScreenState();
// }

// class _ExploreScreenState extends State<ExploreScreen> {
//   TextEditingController searchController = TextEditingController();
//   TextEditingController whenController = TextEditingController();
//   TextEditingController whereController = TextEditingController();

//   // TODO: This method provides the index of the liked Ad, use it to update the object list of shop ads
//   Future<bool?> onLikeButtonTapped(bool? isLiked, int index) async {
//     print(index);
//     return !isLiked!;
//   }

//   // TODO: This method listens to search field, use it to search
//   searchListener() {
//     print(searchController.text);
//   }

//   @override
//   void initState() {
//     searchController.addListener(searchListener);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     searchController.dispose();
//     whenController.dispose();
//     whereController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFFFFFFF),
//         elevation: 0,
//         title: const Text(
//           'Explore',
//           style: TextStyle(
//               fontSize: 16.0,
//               fontWeight: FontWeight.w900,
//               letterSpacing: 0.7,
//               color: Color(0xFF000000)),
//         ),
//       ),
//       body: CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: Container(
//               color: const Color(0xFFFFFFFF),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 8),
//                 child: Column(
//                   children: [
//                     InputField(
//                       labelText: "Search",
//                       controller: searchController,
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         SizedBox(
//                           width: MediaQuery.of(context).size.width / 2.4,
//                           child: InputField(
//                             labelText: "When",
//                             controller: whenController,
//                           ),
//                         ),
//                         SizedBox(
//                           width: MediaQuery.of(context).size.width / 2,
//                           child: InputField(
//                             labelText: "Where",
//                             controller: whereController,
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SliverList(
//               delegate: SliverChildBuilderDelegate(
//                   (context, index) => GestureDetector(
//                         onTap: () => Navigator.pushNamed(
//                             context, shopPageScreenRoute,
//                             arguments: ShopDetailScreenArguments(index: index)),
//                         child: Container(
//                           height: MediaQuery.of(context).size.height / 2.8,
//                           width: MediaQuery.of(context).size.width,
//                           margin: const EdgeInsets.symmetric(
//                               horizontal: 8, vertical: 12),
//                           padding: const EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             image: const DecorationImage(
//                               image: AssetImage("assets/car.jpg"),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     "Freaky's Shop",
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .headlineSmall
//                                         ?.copyWith(color: Colors.white),
//                                   ),
//                                   LikeHeartIcon(
//                                       onTap: (isLiked) =>
//                                           onLikeButtonTapped(isLiked, index))
//                                 ],
//                               ),
//                               const SizedBox(height: 8),
//                               Text(
//                                 "Kashim Way, Wuse zors 1, Abuja Nigeria",
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodySmall
//                                     ?.copyWith(
//                                         color: CustomColors.disableGrey,
//                                         fontWeight: FontWeight.w600),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                   childCount: 10)),
//         ],
//       ),
//     ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:way/app/common/fields/input_field.dart';
import 'package:way/app/model/shop_ad_model.dart';
import 'package:way/app/pages/personal_screens/explore/tabsExplore.dart';
import 'package:way/style/colors.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  TextEditingController searchController = TextEditingController();
  TextEditingController whenController = TextEditingController();
  TextEditingController whereController = TextEditingController();

  // TODO: These are  demo lists, you might need to fetch correct listings data from backend
  // Fetch all listings here and pass them as parameter to tabBarViews.
  List<ShopAdModel> forYouList = [
    ShopAdModel(
        coverImage: "assets/way/add1.png",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Freaky's Shop"),
    ShopAdModel(
        coverImage: "assets/way/add3.png",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Becky's Hair Salon"),
  ];
  List<ShopAdModel> barberShopList = [
    ShopAdModel(
        coverImage: "assets/way/add1.png",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Freaky's Shop"),
    ShopAdModel(
        coverImage: "assets/way/add2.png",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Freaky's Shop"),
  ];
  List<ShopAdModel> hairSalons = [
    ShopAdModel(
        coverImage: "assets/way/add3.png",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Becky's Hair Salon"),
  ];
  List<ShopAdModel> spas = [
    ShopAdModel(
        coverImage: "assets/cat.jpg",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Freaky's Shop"),
  ];
  List<ShopAdModel> others = [
    ShopAdModel(
        coverImage: "assets/tree.jpg",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Freaky's Shop"),
  ];

//   // TODO: This method listens to search field, use it to search
//   searchListener() {
//     print(searchController.text);
//   }

//   @override
//   void initState() {
//     searchController.addListener(searchListener);
//     super.initState();
//   }

  // bool showSearchBar = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    whenController.dispose();
    whereController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Exolore",
              style: TextStyle(
                  fontSize: 16,
                  color: CustomColors.secondaryblack,
                  fontWeight: FontWeight.w900),
            ),
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    InputField(
                      labelText: "Search",
                      controller: searchController,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.4,
                          child: InputField(
                            labelText: "When",
                            controller: whenController,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: InputField(
                            labelText: "Where",
                            controller: whereController,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const TabBar(
                  padding: EdgeInsets.only(left: 12),
                  isScrollable: true,
                  indicatorColor: CustomColors.secondaryblack,
                  unselectedLabelColor: CustomColors.secondaryblack,
                  labelColor: CustomColors.secondaryblack,
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  labelStyle: TextStyle(fontWeight: FontWeight.w900),
                  tabs: [
                    Tab(
                      text: "For You",
                    ),
                    Tab(
                      text: "Barbershops",
                    ),
                    Tab(
                      text: "Hair Salons",
                    ),
                    Tab(
                      text: "Spas",
                    ),
                    Tab(
                      text: "Car Services",
                    ),
                    Tab(
                      text: "Electric Services",
                    ),
                    Tab(
                      text: "Home Cleaning",
                    ),
                    Tab(
                      text: "Plumbing",
                    ),
                    Tab(
                      text: "Other option",
                    ),
                  ]),
              Expanded(
                child: TabBarView(
                  children: [
                    //TODO: use loaders here for each widget below using ternary operator
                    TabsExplore(exploretabslist: forYouList),
                    TabsExplore(exploretabslist: barberShopList),
                    TabsExplore(exploretabslist: hairSalons),
                    TabsExplore(exploretabslist: spas),

                    TabsExplore(exploretabslist: forYouList),
                    TabsExplore(exploretabslist: barberShopList),
                    TabsExplore(exploretabslist: hairSalons),
                    TabsExplore(exploretabslist: spas),

                    TabsExplore(exploretabslist: others),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
