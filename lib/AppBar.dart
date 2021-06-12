import 'package:flutter/material.dart';
import 'package:quiz/Settings.dart';
import 'package:quiz/utilities/colors.dart';

class aBar extends PreferredSize{
  aBar(BuildContext context, title): super(
    preferredSize: Size.fromHeight(60),
    child: AppBar(
      iconTheme: IconThemeData(color: Color(0xff064165)),
      backgroundColor: Color(0xff6CA499),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),

      actions: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => SettingClass(),
            );
          },
          child: Container(
            margin: EdgeInsets.only(right: 10),
            height: MediaQuery.of(context).size.height * .1,
            width: MediaQuery.of(context).size.width * .1,
            child: Image.asset("images/settingsicon.png", color:iconColor,),
          ),
        ),
      ],
    ),
    );
}