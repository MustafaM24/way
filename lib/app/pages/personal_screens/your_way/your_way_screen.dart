import 'package:flutter/material.dart';
import 'package:way/app/common/fields/input_field.dart';
import 'package:way/app/model/shop_ad_model.dart';
import 'package:way/app/pages/personal_screens/your_way/tabs_your_way_screen.dart';
import 'package:way/style/colors.dart';

class YourWayScreen extends StatefulWidget {
  const YourWayScreen({super.key});

  @override
  State<YourWayScreen> createState() => _YourWayScreenState();
}

class _YourWayScreenState extends State<YourWayScreen> {
  TextEditingController searchController = TextEditingController();

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

  bool showSearchBar = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Your WAY",
              style: TextStyle(
                  fontSize: 16,
                  color: CustomColors.secondaryblack,
                  fontWeight: FontWeight.w900),
            ),
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      showSearchBar = true;
                    });
                  },
                  icon: const Icon(
                    Icons.search_rounded,
                    color: CustomColors.secondaryblack,
                  ))
            ],
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
          body: Column(
            children: [
              if (showSearchBar)
                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                //   child: InputField(
                //     labelText: "Search",
                //     controller: textController,
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: SizedBox(
                    height: 50,
                    child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: ('Search'),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                        // prefixIcon:
                        //   Icon(
                        //     Icons.search,
                        //     color: Color.fromARGB(255, 99, 34, 34),
                        //     size: 5,
                        //   ),

                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 25.0, top: 3),
                          child: Icon(Icons.search,
                              color: Colors.black87.withOpacity(0.8)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xffEFEFEF),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 20.0),
                      ),
                    ),
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
                      text: "Other option",
                    ),
                  ]),
              Expanded(
                child: TabBarView(
                  children: [
                    //TODO: use loaders here for each widget below using ternary operator
                    TabsYourWayScreen(tabBarViewList: forYouList),
                    TabsYourWayScreen(tabBarViewList: barberShopList),
                    TabsYourWayScreen(tabBarViewList: hairSalons),
                    TabsYourWayScreen(tabBarViewList: spas),
                    TabsYourWayScreen(tabBarViewList: others),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}



// import 'package:flutter/material.dart';
// import 'package:way/app/model/shop_ad_model.dart';
// import 'package:way/app/pages/personal_screens/your_way/tabs_your_way_screen.dart';
// import 'package:way/style/colors.dart';

// class YourWayScreen extends StatefulWidget {
//   const YourWayScreen({super.key});

//   @override
//   State<YourWayScreen> createState() => _YourWayScreenState();
// }

// class _YourWayScreenState extends State<YourWayScreen> {
//   // TODO: These are  demo lists, you might need to fetch correct listings data from backend
//   // Fetch all listings here and pass them as parameter to tabBarViews.
//   List<ShopAdModel> forYouList = [
//     ShopAdModel(
//         coverImage: "assets/car.jpg",
//         rating: "5.0",
//         reviewCount: "248",
//         subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
//         title: "Freaky's Shop"),
//   ];
//   List<ShopAdModel> barberShopList = [
//     ShopAdModel(
//         coverImage: "assets/cat.jpg",
//         rating: "5.0",
//         reviewCount: "248",
//         subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
//         title: "Freaky's Shop"),
//     ShopAdModel(
//         coverImage: "assets/tree.jpg",
//         rating: "5.0",
//         reviewCount: "248",
//         subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
//         title: "Freaky's Shop"),
//   ];
//   List<ShopAdModel> hairSalons = [
//     ShopAdModel(
//         coverImage: "assets/cat.jpg",
//         rating: "5.0",
//         reviewCount: "248",
//         subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
//         title: "Freaky's Shop"),
//   ];
//   List<ShopAdModel> spas = [
//     ShopAdModel(
//         coverImage: "assets/tree.jpg",
//         rating: "5.0",
//         reviewCount: "248",
//         subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
//         title: "Freaky's Shop"),
//   ];
//   List<ShopAdModel> others = [
//     ShopAdModel(
//         coverImage: "assets/car.jpg",
//         rating: "5.0",
//         reviewCount: "248",
//         subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
//         title: "Freaky's Shop"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 5,
//         child: Scaffold(
//           appBar: AppBar(
//             title: const Text(
//               "Your WAY",
//               style: TextStyle(
//                   fontSize: 16,
//                   color: CustomColors.secondaryblack,
//                   fontWeight: FontWeight.w900),
//             ),
//             elevation: 0,
//             actions: [
//               IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.search_rounded,
//                     color: CustomColors.secondaryblack,
//                   ))
//             ],
//             backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//           ),
//           body: Column(
//             children: [
//               const TabBar(
//                   padding: EdgeInsets.only(left: 12),
//                   isScrollable: true,
//                   indicatorColor: CustomColors.secondaryblack,
//                   unselectedLabelColor: CustomColors.secondaryblack,
//                   labelColor: CustomColors.secondaryblack,
//                   unselectedLabelStyle:
//                       TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
//                   labelStyle: TextStyle(fontWeight: FontWeight.w900),
//                   tabs: [
//                     Tab(
//                       text: "For You",
//                     ),
//                     Tab(
//                       text: "Barbershops",
//                     ),
//                     Tab(
//                       text: "Hair Salons",
//                     ),
//                     Tab(
//                       text: "Spas",
//                     ),
//                     Tab(
//                       text: "Other option",
//                     ),
//                   ]),
//               Expanded(
//                 child: TabBarView(
//                   children: [
//                     //TODO: use loaders here for each widget below using ternary operator
//                     TabsYourWayScreen(tabBarViewList: forYouList),
//                     TabsYourWayScreen(tabBarViewList: barberShopList),
//                     TabsYourWayScreen(tabBarViewList: hairSalons),
//                     TabsYourWayScreen(tabBarViewList: spas),
//                     TabsYourWayScreen(tabBarViewList: others),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }
