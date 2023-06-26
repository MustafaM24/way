import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/details/buisnessdetail.dart';
import 'package:way/app/pages/buisness_screens/feedback/customer_feedback_screen.dart';
import 'package:way/app/pages/buisness_screens/menu/manageEmployee/manageemployee.dart';
import 'package:way/app/pages/buisness_screens/menu/messages/inbox.dart';
import 'package:way/app/pages/buisness_screens/menu/portfolio.dart';
import 'package:way/app/pages/buisness_screens/menu/previousappointments.dart';
import 'package:way/app/pages/buisness_screens/menu/servicemanagement/service.dart';
import 'package:way/app/pages/buisness_screens/menu/wallet/deposits.dart';
import 'package:way/style/colors.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/settings/buisnessSettings.dart';
// import 'package:way/app/pages/buisness_screens/buisnessprofile/settings/billing.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Color(0xFFD9D9D9),
        child: Column(
          children: [
            Container(
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide())),
              child: ListTile(
                minVerticalPadding: 24,
                title: const Center(child: Text("MESSAGES")),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MessagesScreen()));
                },
              ),
            ),
            Container(
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide())),
              child: ListTile(
                minVerticalPadding: 24,
                title: const Center(child: Text("PORTFOLIO IMAGES")),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Portfolio()));
                },
              ),
            ),
            Container(
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide())),
              child: ListTile(
                minVerticalPadding: 24,
                title: const Center(child: Text("SERVICE MANAGEMENT")),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Service()));
                },
              ),
            ),
            Container(
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide())),
              child: ListTile(
                minVerticalPadding: 24,
                title: const Center(child: Text("MANAGE EMPLOYEES")),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ManageEmployeeScreen()));
                },
              ),
            ),
            Container(
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide())),
              child: ListTile(
                minVerticalPadding: 24,
                title: const Center(child: Text("CUSTOMER FEEDBACK")),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomerFeedbackScreen()));
                },
              ),
            ),
            Container(
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide())),
              child: ListTile(
                minVerticalPadding: 24,
                title: const Center(child: Text("WALLET")),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Deposits()));
                },
              ),
            ),
            Container(
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide())),
              child: ListTile(
                minVerticalPadding: 24,
                title: const Center(child: Text("PREVIOUS APPOINTMENTS")),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PreviousAppointments()));
                },
              ),
            ),
            const Spacer(),
            PrimaryButton(
                vertPadding: 20,
                height: 44,
                width: 100,
                title: "Close",
                color: CustomColors.primaryBlue,
                onTap: () => Navigator.of(context).pop())
          ],
        ),
      ),
    );
  }
}
