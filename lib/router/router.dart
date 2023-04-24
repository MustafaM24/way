import 'package:flutter/material.dart';
import 'package:way/app/pages/buisness_screens/feedback/feedback_reply_screen.dart';
import 'package:way/app/pages/personal_screens/auth/forget_splash.dart';
import 'package:way/app/pages/personal_screens/auth/personal_login_screen.dart';
import 'package:way/app/pages/personal_screens/auth/personal_signup_screen.dart';
import 'package:way/app/pages/personal_screens/appointments_Page/appointments.dart';
import 'package:way/app/pages/personal_screens/book_an_appointment/book_an_appointment.dart';
import 'package:way/app/pages/personal_screens/home.dart';

import 'package:way/app/pages/type_of_client/type_of_client_screen.dart';
import 'package:way/app/pages/personal_screens/shop_detail/shop_detail_screen.dart';
import 'package:way/router/router_arguments.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case typeOfClientScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const TypeOfClientScreen());
    case personalLoginScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const PersonalLoginScreen());
    case personalSignupScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const PersonalSignupScreen());
    case forgetSplashRoute:
      return MaterialPageRoute(builder: (context) => const ForgetSplash());
    case homeScreenRoute:
      return MaterialPageRoute(builder: (context) => const Home());
    case bookAppointment:
      return MaterialPageRoute(builder: (context) => const BookAppointment());
    case appointments:
      return MaterialPageRoute(
          builder: (context) => const AppointmentsScreen());
    // case settingScreenRoute:
    //   return MaterialPageRoute(builder: (context) => const SettingsScreen());

    case shopPageScreenRoute:
      final ShopDetailScreenArguments args =
          settings.arguments as ShopDetailScreenArguments;
      return MaterialPageRoute(
          builder: (context) => ShopDetailScreen(
                indexOfShopAd: args.index,
              ));

    case feedbackReplyScreenRoute:
      final FeedbackReplyScreenArguments args =
          settings.arguments as FeedbackReplyScreenArguments;
      return MaterialPageRoute(
          builder: (context) => FeedbackReplyScreen(
                details: args.details,
              ));

    default:
      return MaterialPageRoute(
          builder: (context) => const TypeOfClientScreen());
  }
}

// Routing Constants

const String typeOfClientScreenRoute = '/';
const String personalLoginScreenRoute = '/personalLoginScreen';
const String personalSignupScreenRoute = '/personalSignupScreen';
const String forgetSplashRoute = '/forgetSplash';
const String homeScreenRoute = '/homeScreenRoute';
const String shopPageScreenRoute = '/shopPageScreenRoute';
const String bookAppointment = '/BookAppointment';
const String appointments = '/AppointmentsScreen';

// const String settingScreenRoute = '/settingScreenRoute';
const String customerFeedbackScreenRoute = '/customerFeedbackScreenRoute';
const String feedbackReplyScreenRoute = '/feedbackReplyScreenRoute';
