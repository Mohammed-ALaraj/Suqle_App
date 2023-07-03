
import 'package:flutter/material.dart';
import 'package:suqle_app/Presentation/Screen/Home_screen/Home_screen.dart';
import 'package:suqle_app/Presentation/Screen/Splash_screen/Splash_screen.dart';

class AppRouter{
  Route? generateRout(RouteSettings settings){
    switch(settings.name){
      case 'home':
      return MaterialPageRoute(builder: (_) => HomeScreen());
      case 'splash':
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}