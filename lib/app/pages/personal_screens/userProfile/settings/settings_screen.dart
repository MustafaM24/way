import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/model/setting_screen_models.dart';
import 'package:way/app/pages/personal_screens/userProfile/settings/changePassword.dart';
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
        settingTitle: "Turn on notifications", isSelected: false),
    NotificationSettingModel(
        settingTitle: "App notifications", isSelected: false),
    NotificationSettingModel(settingTitle: "Email", isSelected: false),
  ];

  List<CountryModel> countries = [
    CountryModel(countryName: "Cameroon", isSelected: false, countryCode: "cm"),
    CountryModel(countryName: "Ghana", isSelected: false, countryCode: "gh"),
    CountryModel(countryName: "Nigeria", isSelected: false, countryCode: "ng")
  ];

  // Under this method use both lists to update backend. I've printed the results for your convenience
  onSave() {
    notificationSettings.forEach((element) {
      print(element.settingTitle);
      print(element.isSelected);
    });
    countries.forEach((element) {
      print(element.countryName);
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
        title: const Text(
          "Settings",
          style: TextStyle(
              color: CustomColors.secondaryblack, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          Text(
            "NOTIFICATION SETTINGS",
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
                          activeColor: CustomColors.secondaryblack,
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
          const Divider(height: 40),
          Text(
            "USER SETTINGS",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 20),
          PrimaryButton(
            title: "Change Password",
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => ChangePasswordScreen()));
            },
            color: CustomColors.primaryBlue,
            width: MediaQuery.of(context).size.width / 1.2,
          ),
          const Divider(height: 40),
          Text(
            "COUNTRY",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: countries.length,
              itemBuilder: (context, index) => Row(
                    children: [
                      Checkbox(
                          side: const BorderSide(
                              color: CustomColors.blackGreyBg, width: 2),
                          activeColor: CustomColors.secondaryblack,
                          value: countries[index].isSelected,
                          onChanged: (value) {
                            countries[index].isSelected = value;
                            setState(() {});
                          }),
                      Text(
                        countries[index].countryName,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(width: 4),
                      Image.asset(
                        'assets/countries_flags/${countries[index].countryCode}.png',
                        scale: 6,
                      ),
                    ],
                  )),
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
