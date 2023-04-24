class NotificationSettingModel {
  final String settingTitle;
  bool? isSelected;
  NotificationSettingModel(
      {required this.settingTitle, required this.isSelected});
}

class CountryModel {
  final String countryName;
  final String countryCode;
  bool? isSelected;
  CountryModel(
      {required this.countryName,
      required this.isSelected,
      required this.countryCode});
}
