import 'package:flutter/material.dart';
import 'package:suqle_app/app_router.dart';

import 'Presentation/Screen/Splash_screen/Splash_screen.dart';

void main() {
  runApp(SuqleApp(appRouter: AppRouter(),));
}

class SuqleApp extends StatelessWidget {

  final AppRouter appRouter;

  const SuqleApp({super.key,  required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRout,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

