
import 'package:flutter/material.dart';
import 'package:suqle_app/Presentation/Screen/Home_screen/Home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/images/img_3.jpg',width: 100,height: 200,),
      ),
    );
  }
}
