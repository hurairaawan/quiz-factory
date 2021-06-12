import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingClass extends StatefulWidget {
  @override
  _SettingClassState createState() => _SettingClassState();
}

class _SettingClassState extends State<SettingClass> {
  bool value = true;
  bool value1 = true;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(60.0))
      ),
      title: Center(child: const Text('Settings', style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),)),
      backgroundColor: Color(0xff6ca497),
      content: Container(
        height: MediaQuery
            .of(context)
            .size
            .height * .15,
        width: MediaQuery
            .of(context)
            .size
            .width * .35,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * .04,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .09,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/volumeicon.png'),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text('Sound:', style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),),
                    ),
                  ],
                ),
                Container(
                  child: FlutterSwitch(
                    width: 60.0,
                    height: 30.0,
                    valueFontSize: 15.0,
                    toggleSize: 30.0,
                    activeToggleColor: Colors.green,
                    inactiveToggleColor: Colors.red,
                    activeTextColor: Colors.black,
                    inactiveTextColor: Colors.black,
                    activeTextFontWeight: FontWeight.normal,
                    inactiveTextFontWeight: FontWeight.normal,
                    activeColor: Colors.white,
                    inactiveColor: Colors.white,
                    activeToggleBorder: Border.all(color: Colors.green),
                    inactiveToggleBorder: Border.all(color: Colors.red),
                    padding: 0,
                    value: value,
                    borderRadius: 20.0,
                    showOnOff: true,
                    onToggle: (a){
                      setState(() {
                        value = a;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * .04,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .09,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/musicicon.png'),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text('Music:', style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),),
                    ),
                  ],
                ),
                Container(
                  child: FlutterSwitch(
                    width: 60.0,
                    height: 30.0,
                    valueFontSize: 15.0,
                    toggleSize: 30.0,
                    activeToggleColor: Colors.green,
                    inactiveToggleColor: Colors.red,
                    activeTextColor: Colors.black,
                    inactiveTextColor: Colors.black,
                    activeTextFontWeight: FontWeight.normal,
                    inactiveTextFontWeight: FontWeight.normal,
                    activeColor: Colors.white,
                    inactiveColor: Colors.white,
                    activeToggleBorder: Border.all(color: Colors.green),
                    inactiveToggleBorder: Border.all(color: Colors.red),
                    padding: 0,
                    value: value1,
                    borderRadius: 20.0,
                    showOnOff: true,
                    onToggle: (a){
                      setState(() {
                        value1 = a;
                      });
                    },
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Close', style: TextStyle(color: Colors.white, fontSize: 15),),

        ),
      ],
    );
  }
}
