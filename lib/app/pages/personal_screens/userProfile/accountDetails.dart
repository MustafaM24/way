import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/common/fields/input_field.dart';
import 'package:way/style/colors.dart';

class AccountDetailsScreen extends StatelessWidget {
  //   onSave() {
  //   Navigator.of(context).pop();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
        title: Text('Account Details',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            InputField(
              labelText: 'Full Name',
            ),
            SizedBox(height: 20.0),
            InputField(
              labelText: 'Email',
            ),
            SizedBox(height: 20.0),
            InputField(
              labelText: 'Phone Number',
            ),
            SizedBox(height: 20.0),
            InputField(
              labelText: 'Date of Birth',
            ),
            SizedBox(height: 40.0),
            Text(
              'What services do you want to see?',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            SelectableWords(),
            SizedBox(height: 20.0),
            PrimaryButton(
              vertPadding: 20,
              title: "Save",
              onTap: (() {
                //onsave()
                Navigator.of(context).pop();
              }),
              color: Color(0xFF000000),
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ],
        ),
      ),
    );
  }
}

class SelectableWords extends StatefulWidget {
  @override
  _SelectableWordsState createState() => _SelectableWordsState();
}

class _SelectableWordsState extends State<SelectableWords> {
  int selectedWordIndex = -1;

  List<String> words = ['Both', 'Women', 'Men'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: words.asMap().entries.map((entry) {
        final index = entry.key;
        final word = entry.value;

        return InkWell(
          onTap: () {
            setState(() {
              selectedWordIndex = index;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: selectedWordIndex == index
                      ? Colors.transparent
                      : Colors.transparent,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Center(
              child: Text(
                word,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w900,
                  color: selectedWordIndex == index
                      ? CustomColors.primaryMaroon
                      : null,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
