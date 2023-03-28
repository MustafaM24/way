import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/like_heart_button.dart';
import 'package:way/app/common/fields/input_field.dart';
import 'package:way/router/router.dart';
import 'package:way/router/router_arguments.dart';
import 'package:way/style/colors.dart';

// TODO: Backend code here to fetch listigs data

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  TextEditingController searchController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  // TODO: This method provides the index of the liked Ad, use it to update the object list of shop ads
  Future<bool?> onLikeButtonTapped(bool? isLiked, int index) async {
    print(index);
    return !isLiked!;
  }

  // TODO: This method listens to search field, use it to search
  searchListener() {
    print(searchController.text);
  }

  @override
  void initState() {
    searchController.addListener(searchListener);
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        title: Text(
          'Explore',
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.7,
              color: Color(0xFF000000)),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: Color(0xFFFFFFFF),
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 400,
                    child: InputField(
                      labelText: "Search",
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 400,
                    child: InputField(
                      labelText: "Your Location?",
                      obscureText: true,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, shopPageScreenRoute,
                            arguments: ShopDetailScreenArguments(index: index)),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2.8,
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 12),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              image: AssetImage("assets/car.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Freaky's Shop",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(color: Colors.white),
                                  ),
                                  LikeHeartIcon(
                                      onTap: (isLiked) =>
                                          onLikeButtonTapped(isLiked, index))
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Kashim Way, Wuse zors 1, Abuja Nigeria",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: CustomColors.disableGrey,
                                        fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                  childCount: 10)),
        ],
      ),
    ));
  }
}
