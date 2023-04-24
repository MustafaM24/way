import 'package:flutter/material.dart';
import 'package:way/router/router.dart' as router;
import 'package:flutter/services.dart';
import 'package:way/router/router.dart';
import 'package:way/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
