import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/pages/buisness_screens/auth/buisness_login_screen.dart';
import 'package:way/router/router.dart';

class TypeOfClientScreen extends StatelessWidget {
  const TypeOfClientScreen({super.key});

// ignore: todo
//TODO: write navigations

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // Container(
        //   width: MediaQuery.of(context).size.width / 2.5, //150,
        //   height: MediaQuery.of(context).size.height / 4, //220,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(10),
        //     image: DecorationImage(
        //       image: AssetImage('assets/logo.png'),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
        Image.asset(
          'assets/logo.png',
          fit: BoxFit.cover,
        ),
        const Text("Let's get started. Select your vibe!"),
        const SizedBox(height: 40),
        PrimaryButton(
          title: "Personal",
          onTap: () =>
              Navigator.pushReplacementNamed(context, personalLoginScreenRoute),
        ),
        const SizedBox(height: 20),
        PrimaryButton(
          title: "Business",
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const BuisnessLogin()));
          },
        )
      ]),
    );
  }
}
