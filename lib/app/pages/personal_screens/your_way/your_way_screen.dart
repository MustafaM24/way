import 'package:flutter/material.dart';
import 'package:way/app/model/shop_ad_model.dart';
import 'package:way/app/pages/personal_screens/your_way/tabs_your_way_screen.dart';
import 'package:way/style/colors.dart';

class YourWayScreen extends StatefulWidget {
  const YourWayScreen({super.key});

  @override
  State<YourWayScreen> createState() => _YourWayScreenState();
}

class _YourWayScreenState extends State<YourWayScreen> {
  // TODO: These are  demo lists, you might need to fetch correct listings data from backend
  // Fetch all listings here and pass them as parameter to tabBarViews.
  List<ShopAdModel> forYouList = [
    ShopAdModel(
        coverImage: "assets/car.jpg",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Freaky's Shop"),
  ];
  List<ShopAdModel> barberShopList = [
    ShopAdModel(
        coverImage: "assets/cat.jpg",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Freaky's Shop"),
    ShopAdModel(
        coverImage: "assets/tree.jpg",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Freaky's Shop"),
  ];
  List<ShopAdModel> hairSalons = [
    ShopAdModel(
        coverImage: "assets/cat.jpg",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Freaky's Shop"),
  ];
  List<ShopAdModel> spas = [
    ShopAdModel(
        coverImage: "assets/tree.jpg",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Freaky's Shop"),
  ];
  List<ShopAdModel> others = [
    ShopAdModel(
        coverImage: "assets/car.jpg",
        rating: "5.0",
        reviewCount: "248",
        subtitle: "Kashim Way, Wuse zors 1, Abuja Nigeria",
        title: "Freaky's Shop"),
  ];

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
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search_rounded,
                    color: CustomColors.secondaryblack,
                  ))
            ],
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
          body: Column(
            children: [
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
