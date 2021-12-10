import 'package:flutter/cupertino.dart';
import 'package:weather_app/screens/app_splash_screen.dart';
import 'package:weather_app/screens/home_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => AppSplashScreen(),
  '/home': (BuildContext context) => const HomeScreen(),
};
