import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:way/app/pages/buisness_screens/appointment_screen.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/buisnessprofile.dart';
import 'package:way/app/pages/buisness_screens/menu/manageEmployee/manageemployee.dart';
import 'package:way/app/pages/buisness_screens/clients.dart';
import 'package:way/app/pages/buisness_screens/menu/menu_drawer.dart';
import 'package:way/style/colors.dart';

class BuisnessHome extends StatefulWidget {
  const BuisnessHome({super.key});

  @override
  State<BuisnessHome> createState() => _BuisnessHomeState();
}

class _BuisnessHomeState extends State<BuisnessHome> {
  final _drawerKey = GlobalKey<ScaffoldState>();
  int currentIndex = 1;
  bool menuToggler = false;

  final List<Widget> screens = [
    Placeholder(),
    AppointmentScreen(),
    ClientsScreen(),
    BuisnessProfile(),
  ];

  onMenuPressedHandler() {
    _drawerKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const MenuDrawer(),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            if (index != 0) {
              currentIndex = index;
              setState(() {});
            } else {
              onMenuPressedHandler();
            }
          },
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: CustomColors.primaryBlue,
          unselectedFontSize: 12,
          selectedFontSize: 12,
          iconSize: 28,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu_open), label: 'menu'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_rounded),
                label: 'Appointments'),
            BottomNavigationBarItem(
                icon: Icon(Icons.groups_outlined), label: 'clients'),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.warehouse), label: 'Profile'),
          ]),
    );
  }
}
