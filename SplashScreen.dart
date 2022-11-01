import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashTime();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Image.asset('assest/logo.png'),
      
    );
  }

  void splashTime(){
    Future.delayed(const Duration (seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),));
    });
  }
}
