import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/model/setting_screen_models.dart';
import 'package:way/app/pages/personal_screens/userProfile/settings/changePassword.dart';
import 'package:way/style/colors.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  //TODO: these are the lists of setting options

  List<NotificationSettingModel> notificationSettings = [
    NotificationSettingModel(
        settingTitle: "Allow all notifications", isSelected: false),
    NotificationSettingModel(
        settingTitle: "Get notified when a booking is made", isSelected: false),
    NotificationSettingModel(
        settingTitle: "Get a reminder on upcoming bookings", isSelected: false),
    NotificationSettingModel(
        settingTitle: "Get notified when your clients send you a message",
        isSelected: false),
    NotificationSettingModel(
        settingTitle: "Recieve text and email notifications",
        isSelected: false),
  ];

  // Under this method use both lists to update backend. I've printed the results for your convenience
  onSave() {
    notificationSettings.forEach((element) {
      print(element.settingTitle);
      print(element.isSelected);
    });

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        // title: const Text(
        //   "Not",
        //   style: TextStyle(
        //       color: CustomColors.secondaryblack, fontWeight: FontWeight.w700),
        // ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          Text(
            "Select your preferred notification",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 8),
          ListView.builder(
              shrinkWrap: true,
              itemCount: notificationSettings.length,
              itemBuilder: (context, index) => Row(
                    children: [
                      Checkbox(
                          side: const BorderSide(
                              color: CustomColors.blackGreyBg, width: 2),
                          activeColor: CustomColors.primaryBlue,
                          value: notificationSettings[index].isSelected,
                          onChanged: (value) {
                            notificationSettings[index].isSelected = value;
                            setState(() {});
                          }),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          notificationSettings[index].settingTitle,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      )
                      // Text(
                      //   notificationSettings[index].settingTitle,
                      //   style: Theme.of(context).textTheme.titleSmall,
                      // )
                    ],
                  )),
        ],
      ),
    );
  }
}
