import 'package:flutter/material.dart';
import 'package:way/app/pages/personal_screens/appointments_Page/appointments.dart';
import 'package:way/app/pages/personal_screens/explore/exploreScreen.dart';
import 'package:way/app/pages/personal_screens/explore_screen.dart';
import 'package:way/app/pages/personal_screens/userProfile/userProfile.dart';
import 'package:way/app/pages/personal_screens/your_way/your_way_screen.dart';
import 'package:way/style/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  final List<Widget> screens = [
    YourWayScreen(),
    AppointmentsScreen(),
    ExploreScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: screens,
        index: currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: CustomColors.primaryBlue,
          unselectedFontSize: 12,
          selectedFontSize: 12,
          iconSize: 28,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: 'Your WAY'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_rounded),
                label: 'Appointments'),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.searchWeb), label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
