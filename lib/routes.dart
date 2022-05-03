import 'package:flutter/widgets.dart';
import 'package:rent_a_trend/screens/cart/cart_screen.dart';
import 'package:rent_a_trend/screens/complete_profile/complete_profile_screen.dart';
import 'package:rent_a_trend/screens/details/details_screen.dart';
import 'package:rent_a_trend/screens/forgot_password/forgot_password_screen.dart';
import 'package:rent_a_trend/screens/home/home_screen.dart';
import 'package:rent_a_trend/screens/profile/profile_screen.dart';
import 'package:rent_a_trend/screens/sign_in/sign_in_screen.dart';
import 'package:rent_a_trend/screens/sign_up/sign_up_screen.dart';
import 'package:rent_a_trend/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
