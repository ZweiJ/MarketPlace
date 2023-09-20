import 'package:ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce/screens/login_succes/login_succsess_screen.dart';
import 'package:ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen('/'),
  SignInScreen.routeName:(context) => SignInScreen('/signin'),
  ForgotPasswordScreen.routeName:(context) => ForgotPasswordScreen('/forgot_password'),
  LoginSuccessScreen.routeName:(context) => LoginSuccessScreen('/login_success'),
};



