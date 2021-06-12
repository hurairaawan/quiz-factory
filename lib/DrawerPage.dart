import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/AddQuestions.dart';
import 'package:quiz/AppRoutes.dart';
import 'package:quiz/CoinShop.dart';
import 'package:quiz/LogInClass.dart';
import 'package:quiz/Profile.dart';
import 'package:quiz/utilities/colors.dart';
class DrawerPage extends PreferredSize {
  DrawerPage(
      BuildContext context,
      ) : super(
    preferredSize: Size.fromHeight(0),
    child: Drawer(
        child: Container(
          padding: EdgeInsets.only(left: 10),
          color: primaryColor,
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*.15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Center(child: Text('Name',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold))),
              SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  AppRoutes.push(context, Profile());
                },
                  child: Text('Profile',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
              SizedBox(height: 15),
              GestureDetector(
                  onTap: (){
                    AppRoutes.push(context, AddQuestions());
                  },
                  child: Text('Add Question',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
              SizedBox(height: 15),
              GestureDetector(
                onTap: (){
                  AppRoutes.push(context, CoinShop());
                },
                  child: Text('Coin Shop',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
              SizedBox(height: 15),
              GestureDetector(
                  onTap: (){
                     showDialog(
                        context: context,
                        builder: (buildContext) {
                          return AlertDialog(
                            backgroundColor: Color(0xff6ca499),
                            title: Text('Are you sure you want to log out?',style: TextStyle(color: Colors.white),),
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
                                  AppRoutes.replace(context, LogInClass());
                                },
                                child: const Text(
                                  'Yes', style: TextStyle(color: Colors.white, fontSize: 15),),
                              ),
                            ],
                          );
                        }
                    );
                  },
                  child: Text('Log Out',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
            ],
          ),
        ),
    ),
  );
}