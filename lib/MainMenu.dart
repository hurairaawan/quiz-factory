import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz/AppRoutes.dart';
import 'package:quiz/DrawerPage.dart';
import 'package:quiz/QuestionPage.dart';
import 'package:quiz/Settings.dart';
import 'package:quiz/utilities/colors.dart';



class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);
  @override
  _MainMenuState createState() => _MainMenuState();
}
class _MainMenuState extends State<MainMenu> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(context),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff064165)),
        backgroundColor: Color(0xff6CA499),
        centerTitle: true,
        title: Text(
          'Main Menu',
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
          )
        ],
      ),
      body: WillPopScope(

        onWillPop: _backButtonLogOut,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/background.png',
                ),
                fit: BoxFit.fill,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height * .40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height *.20,
                      child: Image(
                        image: AssetImage('images/quizfactorylogo.png'),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height *.20,
                      child: Image(
                        image: AssetImage('images/quizfactorytitle.png'),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  AppRoutes.push(context, QuestionPage());
                  setState(() {
                    i = 1;
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * .075,
                  width: MediaQuery.of(context).size.width * .5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: i == 1
                        ? Color(0xff6CA499)
                        : Color(0xff6CA499).withOpacity(0.0),
                    border: i == 1
                        ? Border.all(width: 0)
                        : Border.all(color: Colors.white, width: 0.8),
                  ),
                  child: Center(
                    child: Text(
                      'Play',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(bottom: 20, left: 10),
                    height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/videoicon.png'),
                          fit: BoxFit.fill,
                        )),
                  ),
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(bottom: 20, top: 5),
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.width * .30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff928e8e),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 5),
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.width * .1,
                        alignment: Alignment.center,
                        child: Text(
                          '20',
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 35),
                        height: MediaQuery.of(context).size.height * .07,
                        width: MediaQuery.of(context).size.width * .14,
                        child: Image(
                          alignment: Alignment.topRight,
                          image: AssetImage('images/dollaricon.png'),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 80, top: 3),
                          height: MediaQuery.of(context).size.height * .06,
                          width: MediaQuery.of(context).size.width * .12,
                          child: Image(
                            alignment: Alignment.topRight,
                            image: AssetImage('images/additions.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<bool> _backButtonLogOut()async{
  showDialog(
        context: context,
        builder: (buildContext) {
          return AlertDialog(
            backgroundColor: Color(0xff6ca499),
            title: Text('Are you sure you want to exit?',style: TextStyle(color: Colors.white),),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'No', style: TextStyle(color: Colors.white, fontSize: 15),),
              ),
              TextButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: const Text(
                  'Yes', style: TextStyle(color: Colors.white, fontSize: 15),),
              ),
            ],
          );
        }
    );
  return  false;
  }
}

