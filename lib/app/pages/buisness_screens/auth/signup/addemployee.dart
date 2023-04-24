import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/pages/buisness_screens/auth/signup/signupComplete.dart';
import 'package:way/style/colors.dart';
import 'package:image_picker/image_picker.dart';

class SignUpAddEmployee extends StatefulWidget {
  const SignUpAddEmployee({Key? key}) : super(key: key);

  @override
  _SignUpAddEmployeeState createState() => _SignUpAddEmployeeState();
}

class _SignUpAddEmployeeState extends State<SignUpAddEmployee> {
  File? _profileImage;

  final _signupFormKey = GlobalKey<FormState>();

  Future _pickProfileImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => _profileImage = imageTemporary);
    } on PlatformException catch (e) {
      debugPrint('Failed to pick image error: $e');
    }
  }

  final _nameController = TextEditingController();
  final _roleController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _roleController.dispose();
    super.dispose();
  }

  // void _pickProfileImage() async {
  //   // TODO: Implement image picker
  // }

  void _saveEmployee() {
    final name = _nameController.text;
    final role = _roleController.text;
    // TODO: Implement saving employee data
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: Color(0xFF000000)),
        title: const Text('Add Employee'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Add Employee',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: 130,
              height: 130,
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                backgroundImage:
                    _profileImage != null ? FileImage(_profileImage!) : null,
                child: Stack(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade200,
                        backgroundImage: _profileImage != null
                            ? FileImage(_profileImage!)
                            : null,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: GestureDetector(
                                onTap: _pickProfileImage,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF969696),
                                    border: Border.all(
                                        color: Colors.white, width: 3),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: const Icon(
                                    Icons.camera_alt_sharp,
                                    color: Color(0xFF000000),
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Positioned(
                    //   bottom: 0,
                    //   right: 0,
                    //   child: GestureDetector(
                    //     onTap: _pickProfileImage,
                    //     child: Container(
                    //       height: 50,
                    //       width: 50,
                    //       decoration: BoxDecoration(
                    //         color: Color(0xFF000000),
                    //         border: Border.all(color: Colors.white, width: 3),
                    //         borderRadius: BorderRadius.circular(25),
                    //       ),
                    //       child: const Icon(
                    //         Icons.camera_alt_sharp,
                    //         color: Color(0xFF000000),
                    //         size: 25,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Employee Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _roleController,
              decoration: InputDecoration(
                hintText: 'Role',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32),
            PrimaryButton(
              vertPadding: 20,
              horizPadding: 60,
              title: 'Add Employee',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SignupCompleteScreen()));
                // TODO: Implement save functionality
              },
              color: CustomColors.primaryBlue,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ],
        ),
      ),
    );
  }
}
