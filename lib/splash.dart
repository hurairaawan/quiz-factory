import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz/LogInClass.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    loadData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Image.asset('images/splash.png',fit: BoxFit.fill),
      ),
    );
  }
  Future<Timer> loadData() async{
    return new Timer(Duration(seconds: 3), navigateUser);
  }
  void navigateUser() async{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogInClass()));
  }
}
