import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:way/router/router.dart' as router;
import 'package:flutter/services.dart';
import 'package:way/router/router.dart';
import 'package:way/theme/theme.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const WayApp());
}

class WayApp extends StatelessWidget {
  const WayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      initialRoute: typeOfClientScreenRoute,
      themeMode: ThemeMode.light,
      theme: CustomTheme.lightTheme,
    );
  }
}
