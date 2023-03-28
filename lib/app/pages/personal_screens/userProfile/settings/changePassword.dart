import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/common/fields/input_field.dart';
import 'package:way/app/validators/validators.dart';
import 'package:way/style/colors.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController currentpasswordController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    currentpasswordController.dispose();
    newpasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void onSave() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pop();
      // Save password logic goes here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFF000000)),
        title: Text('Change Password',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            )),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              InputField(
                labelText: 'Current Password',
                controller: currentpasswordController,
                obscureText: true,
                validator: passwordValidator,
              ),
              SizedBox(height: 20.0),
              InputField(
                labelText: 'New Password',
                controller: newpasswordController,
                obscureText: true,
                validator: passwordValidator,
              ),
              SizedBox(height: 20),
              InputField(
                labelText: 'Confirm Password',
                controller: confirmPasswordController,
                obscureText: true,
                validator: (value) {
                  if (value != newpasswordController.text) {
                    return "*Passwords didn't match";
                  } else if (value!.isEmpty) {
                    return "*Required field";
                  }
                  return null;
                },
              ),
              SizedBox(height: 40.0),
              PrimaryButton(
                vertPadding: 20,
                title: 'Save Password',
                onTap: onSave,
                color: Color(0xFF000000),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
