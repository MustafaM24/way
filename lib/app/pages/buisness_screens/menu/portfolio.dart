// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:way/app/common/buttons/primary_button.dart';
// import 'package:way/app/pages/buisness_screens/menu/servicemanagement/service.dart';
// import 'package:way/style/colors.dart';

// class Portfolio extends StatefulWidget {
//   const Portfolio({super.key});

//   @override
//   State<Portfolio> createState() => _PortfolioState();
// }

// class _PortfolioState extends State<Portfolio> {
//   GlobalKey<FormState> formkey = GlobalKey();
//   File? _profileImage;
//   bool isButtonPressed = false;

// //TODO: write sign up logic here. Email, password and confirm password below (inside if condition) are validated

//   Future _pickProfileImage() async {
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//       if (image == null) return;

//       final imageTemporary = File(image.path);
//       setState(() => _profileImage = imageTemporary);
//     } on PlatformException catch (e) {
//       debugPrint('Failed to pick image error: $e');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

// // class Portfolio extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: CustomColors.transparent,
//         iconTheme: const IconThemeData(color: CustomColors.secondaryblack),
//         // title: Text(
//         //   'Portfolio Management',
//         //   style: TextStyle(
//         //       color: Color(0xFF000000),
//         //       fontWeight: FontWeight.w600,
//         //       fontSize: 16),
//         // ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             children: [
//               PrimaryButton(
//                 vertPadding: 20,
//                 horizPadding: 60,
//                 title: 'Add Images',
//                 onTap: () {
//                   Navigator.of(context).pushReplacement(
//                       MaterialPageRoute(builder: (context) => Service()));
//                   // TODO: Implement save functionality
//                 },
//                 color: CustomColors.primaryBlue,
//                 width: MediaQuery.of(context).size.width / 1.2,
//               ),
//               SizedBox(height: 40),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 35),
//                 child: GridView.count(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 25,
//                   crossAxisSpacing: 25,
//                   children: [
//                     _imageBox(context, 'Haircut', Service()),
//                     _imageBox(context, 'Beard', Service()),
//                     _imageBox(context, 'Kids', Service()),
//                     _imageBox(context, 'Ladies Haircut', Service()),
//                     _imageBox(context, 'Haircut', Service()),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _imageBox(BuildContext context, String text, Widget route) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width *
//           0.4, // Set width to 40% of the screen width
//       height: 100,
//       child: SizedBox(
//         width: 130,
//         height: 130,
//         child: CircleAvatar(
//           backgroundColor: Colors.grey.shade200,
//           backgroundImage:
//               _profileImage != null ? FileImage(_profileImage!) : null,
//           child: Stack(
//             children: [
//               SizedBox(
//                 width: 130,
//                 height: 130,
//                 child: CircleAvatar(
//                   backgroundColor: Colors.grey.shade200,
//                   backgroundImage:
//                       _profileImage != null ? FileImage(_profileImage!) : null,
//                   child: Stack(
//                     children: [
//                       Positioned(
//                         bottom: 0,
//                         right: 0,
//                         child: GestureDetector(
//                           onTap: _pickProfileImage,
//                           child: Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(
//                               color: Color(0xFF969696),
//                               border: Border.all(color: Colors.white, width: 3),
//                               borderRadius: BorderRadius.circular(25),
//                             ),
//                             child: const Icon(
//                               Icons.camera_alt_sharp,
//                               color: Color(0xFF000000),
//                               size: 25,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/pages/buisness_screens/menu/servicemanagement/service.dart';
import 'package:way/style/colors.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<File?> _images = List.generate(5, (_) => null);
  List<int> emptyIndices = [];

  int _currentIndex = 0;

  // void _pickProfileImage() async {
  //   final pickedFile =
  //       await ImagePicker().getImage(source: ImageSource.gallery);
  //   if (pickedFile != null) {
  //     setState(() {
  //       _images[_currentIndex] = File(pickedFile.path);
  //       _currentIndex = (_currentIndex + 1) % _images.length;
  //     });
  //   }
  // }
  void _pickProfileImage() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        int emptyIndex;
        bool emptyIndexFound = false;
        for (int i = 0; i < _images.length; i++) {
          if (_images[i] == null && !emptyIndexFound) {
            emptyIndex = i;
            _images[i] = File(pickedFile.path);
            _currentIndex = (_currentIndex + 1) % _images.length;
            emptyIndexFound = true;
          }
        }
        if (!emptyIndexFound) {
          int currentIndex = _currentIndex;
          _images[currentIndex] = File(pickedFile.path);
          _currentIndex = (_currentIndex + 1) % _images.length;
        }
      });
    }
  }

  // void _pickProfileImage() async {
  //   final pickedFile =
  //       await ImagePicker().getImage(source: ImageSource.gallery);
  //   if (pickedFile != null) {
  //     setState(() {
  //       int emptyIndex =
  //           emptyIndices.isNotEmpty ? emptyIndices.removeAt(0) : _currentIndex;
  //       _images[emptyIndex] = File(pickedFile.path);
  //       _currentIndex = (_currentIndex + 1) % _images.length;
  //     });
  //   }
  // }

  void _removeImage(int index) {
    setState(() {
      _images[index] = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              PrimaryButton(
                vertPadding: 20,
                horizPadding: 60,
                title: 'Add Images',
                onTap: () {
                  // onPressed:
                  _pickProfileImage();
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) => Service()));
                  // TODO: Implement save functionality
                },
                color: CustomColors.primaryBlue,
                width: MediaQuery.of(context).size.width / 1.2,
              ),
              SizedBox(height: 40),
              SizedBox(
                width: MediaQuery.of(context).size.width *
                    0.8, // Set width to 40% of the screen width
                // height: 100,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 25,
                      childAspectRatio: 1,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: _images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          if (_images[index] != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Scaffold(
                                  body: Center(
                                    child: Image.file(
                                      _images[index]!,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: CustomColors.shadowGrey,
                                border:
                                    Border.all(color: Colors.white, width: 3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: _images[index] != null
                                  ? Image.file(
                                      _images[index]!,
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.cover,
                                    )
                                  : GestureDetector(
                                      onTap: _pickProfileImage,
                                      // child: emptyIndices.contains(index)
                                      // ? Icon(
                                      //     Icons.add_to_photos,
                                      //     size: 40.0,
                                      //     color: Colors.grey,
                                      //   )
                                      // : null,
                                    ),
                            ),
                            _images[index] != null
                                ? Positioned(
                                    top: 0,
                                    right: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        _removeImage(index);
                                        emptyIndices.add(index);
                                        emptyIndices.sort();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.8),
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
