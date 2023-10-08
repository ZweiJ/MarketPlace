import 'package:ecommerce/screens/cart/cart_screen.dart';
import 'package:ecommerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce/screens/details/details_screen.dart';
import 'package:ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/login_succes/login_succsess_screen.dart';
import 'package:ecommerce/screens/otp/otp_screen.dart';
import 'package:ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  SplashScreen.routeName: (context) => SplashScreen('/'),
  SignInScreen.routeName:(context) => SignInScreen('/signin'),
  ForgotPasswordScreen.routeName:(context) => ForgotPasswordScreen('/forgot_password'),
  LoginSuccessScreen.routeName:(context) => LoginSuccessScreen('/login_success'),
  SignUpscreen.routeName: (context) => SignUpscreen('/sign_up'),
  CompleteProfileScreen.routeName : (context) => CompleteProfileScreen('/complete_profile'),
  OtpScreen.routeName: (context) => OtpScreen('/otp'),
  HomeScreen.routeName: (context) => HomeScreen('/home'),
  DetailsScreen.routeName: (context) => DetailsScreen('/details'),
  CartScreen.routeName: (context) => CartScreen('/cart'),
};



