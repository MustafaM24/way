import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/style/colors.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  //TODO: these are the lists of location options

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

  bool isSettingsSaved = false;

  onSave() {
    if (!isSettingsSaved) {
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
        backgroundColor: CustomColors.transparent,
        title: Text(
          'Location Settings',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
      ),
      body: Column(
        children: [
          // const Divider(height: 8),
          // Text(
          //   "Location Settings",
          //   style: Theme.of(context).textTheme.labelLarge,
          // ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
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
          // const Divider(height: 8),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
            child: Text(
              "Identify Business on the map to enable your clients find you easily and quicker",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'assets/way/MAP.png',
                fit: BoxFit.cover,
              ),
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
