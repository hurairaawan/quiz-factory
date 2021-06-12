import 'package:flutter/material.dart';


class AppRoutes {
  static void push(BuildContext context, Widget page,) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }
  static void replace(BuildContext context,Widget page,) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => page),
    );
  }
  static void pop(BuildContext context, Widget page){
    Navigator.of(context).pop(
      MaterialPageRoute(builder: (context)=> page),
    );
  }
}