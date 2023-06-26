import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/model/setting_screen_models.dart';
import 'package:way/app/pages/personal_screens/userProfile/details/changePassword.dart';
import 'package:way/style/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  //TODO: these are the lists of setting options

  List<NotificationSettingModel> notificationSettings = [
    NotificationSettingModel(
        settingTitle: "Allow all notifications", isSelected: false),
    NotificationSettingModel(
        settingTitle: "Get notified when a booking is accepted.",
        isSelected: false),
    NotificationSettingModel(
        settingTitle: "Get reminders on upcoming appointments",
        isSelected: false),
    NotificationSettingModel(
        settingTitle: "Get in app message notifications", isSelected: false),
    NotificationSettingModel(
        settingTitle: "Recieve text and email notifications",
        isSelected: false),
  ];

  String dropdownValue = 'Select your Country';

  List<String> countries = [
    'Select your Country',
    'USA',
    'Canada',
    'Mexico',
    'Brazil',
    'Argentina',
    'Chile',
    'Australia',
    'New Zealand',
    'India',
    'China',
    'Japan',
    'South Korea',
  ];

  String dropdownValue1 = 'Select your City';

  List<String> cities = [
    'Select your City',
    'New York',
    'Los Angeles',
    'Chicago',
    'Houston',
    'Toronto',
    'Vancouver',
    'Mexico City',
    'São Paulo',
    'Buenos Aires',
    'Santiago',
    'Sydney',
    'Melbourne',
    'Auckland',
    'Mumbai',
    'Delhi',
    'Beijing',
    'Shanghai',
    'Tokyo',
    'Seoul',
  ];

  // Under this method use both lists to update backend. I've printed the results for your convenience
  // onSave() {
  //   notificationSettings.forEach((element) {
  //     print(element.settingTitle);
  //     print(element.isSelected);
  //   });
  //   countries.forEach((element) {
  //     print(dropdownValue);
  //   });
  //   cities.forEach((element) {
  //     print(dropdownValue1);
  //   });
  //   Navigator.of(context).pop();
  // }
  bool isSettingsSaved = false;

  onSave() {
    if (!isSettingsSaved) {
      notificationSettings.forEach((element) {
        print(element.settingTitle);
        print(element.isSelected);
      });
      print(dropdownValue);
      print(dropdownValue1);
      isSettingsSaved = true;
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Color(0xFF000000),
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          Text(
            "Notification Settings",
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
                      Text(
                        notificationSettings[index].settingTitle,
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  )),
          // const Divider(height: 40),
          // Text(
          //   "USER SETTINGS",
          //   style: Theme.of(context).textTheme.labelLarge,
          // ),
          // const SizedBox(height: 20),
          // PrimaryButton(
          //   title: "Change Password",
          //   onTap: () {
          //     Navigator.of(context).pushReplacement(MaterialPageRoute(
          //         builder: (context) => ChangePasswordScreen()));
          //   },
          //   color: CustomColors.primaryBlue,
          //   width: MediaQuery.of(context).size.width / 1.2,
          // ),
          const Divider(height: 40),
          Text(
            "Location Settings",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: DropdownButtonFormField<String>(
              value: dropdownValue,
              onChanged: (newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: countries
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              decoration: InputDecoration(
                labelText: 'Select a Country',
                border: OutlineInputBorder(),
              ),
              isExpanded: true, // Add this line
            ),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: DropdownButtonFormField<String>(
              value: dropdownValue1,
              onChanged: (newValue1) {
                setState(() {
                  dropdownValue1 = newValue1!;
                });
              },
              items: cities
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              decoration: InputDecoration(
                labelText: 'Select a City',
                border: OutlineInputBorder(),
              ),
              isExpanded: true, // Add this line
            ),
          ),
          const Spacer(),
          PrimaryButton(
            vertPadding: 20,
            title: "Save",
            onTap: onSave,
            color: CustomColors.primaryBlue,
            width: MediaQuery.of(context).size.width / 1.2,
          ),
        ],
      ),
    );
  }
}
