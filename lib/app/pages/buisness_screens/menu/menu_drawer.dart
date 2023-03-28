import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/details/buisnessdetail.dart';
import 'package:way/app/pages/buisness_screens/feedback/customer_feedback_screen.dart';
import 'package:way/app/pages/buisness_screens/menu/billing.dart';
import 'package:way/app/pages/buisness_screens/menu/manageEmployee/manageemployee.dart';
import 'package:way/app/pages/buisness_screens/menu/service.dart';
import 'package:way/style/colors.dart';
import 'package:way/app/pages/buisness_screens/buisnessprofile/settings/buisnessSettings.dart';
// import 'package:way/app/pages/buisness_screens/buisnessprofile/settings/billing.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide())),
              child: ListTile(
                minVerticalPadding: 24,
                title: const Center(child: Text("SETTINGS")),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BuisnessSettings()));
                },
              ),
            ),
            Container(
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide())),
              child: ListTile(
                minVerticalPadding: 24,
                title: const Center(child: Text("BILLING AND SUBSCRIPTION")),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Billing()));
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
                title: const Center(child: Text("UPDATE PROFILE")),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BuisnessDetail()));
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
            const Spacer(),
            PrimaryButton(
                vertPadding: 20,
                height: 44,
                width: 100,
                title: "Close",
                color: CustomColors.secondaryblack,
                onTap: () => Navigator.of(context).pop())
          ],
        ),
      ),
    );
  }
}
