import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quiz/AppRoutes.dart';
import 'package:quiz/LogInClass.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  TextEditingController _phoneNoController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _reEnteredPasswordController = TextEditingController();

  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png',),
              fit:BoxFit.fill,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 20),
              height: MediaQuery.of(context).size.height * .10,
              width: MediaQuery.of(context).size.width * .3,
              child: Image(
                image: AssetImage('images/quizfactorylogo.png'),
              ),
            ),
            Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (OverscrollIndicatorNotification overscroll) {
                  overscroll.disallowGlow();
                  return true;
                },

                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                    height: MediaQuery.of(context).size.height * .70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff6ca499),
                    ),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textField('First Name', TextInputType.name, 20, true,_fNameController),
                                textField('Last Name', TextInputType.name, 20, true,_lNameController),
                                textField('Phone Number', TextInputType.number, 30, true,_phoneNoController),
                                textField('Email', TextInputType.emailAddress, 50, true,_emailController),
                                textField('Password', TextInputType.name, 40, false,_passwordController),
                                textField('Re-Enter Password', TextInputType.name, 40, false,_reEnteredPasswordController),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  height: MediaQuery.of(context).size.height * .05,
                                  width: MediaQuery.of(context).size.width * .7,
                                  decoration: BoxDecoration(
                                    color: Color(0xff8FA7A2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    children: [
                                      new Checkbox(
                                          value: checkBoxValue,
                                          activeColor: Color(0xff6CA499),
                                          onChanged: (value) {
                                            setState(() {
                                              checkBoxValue = value!;
                                            });
                                          }),
                                      Expanded(
                                        child: Text(
                                          "I Accept The Terms And Conditions",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: signUpAuthentication,
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                height:
                                MediaQuery.of(context).size.height * .05,
                                width: MediaQuery.of(context).size.width * .5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white),
                                  color: Color(0xff6CA499),
                                ),
                                child: Center(
                                    child: Text(
                                      "Sign up",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Already Have An Account?',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                 AppRoutes.pop(context, LogInClass());
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 5,top: 10
                                  ),
                                  child: Text(
                                    "Log in",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  textField(String txt,TextInputType inputType,int maxLen,bool showPassword,TextEditingController a){
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 5),
        height: MediaQuery.of(context).size.height * .075,
        child: TextFormField(
          controller: a,
          cursorColor: Colors.blue,
          cursorHeight: 30,
          maxLength: maxLen,
          keyboardType: inputType,
          obscureText: showPassword,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          maxLines: 1,
          decoration: InputDecoration(

              hintText: txt,
              counterText:"",
              hintStyle: TextStyle(color: Colors.white, fontSize: 20),
              fillColor: Color(0xff8FA7A2),
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ));
  }

  Future<void>signUpAuthentication() async{
    if(_fNameController.text.isNotEmpty) {
      if (_phoneNoController.text.isNotEmpty) {
        if ((isEmail(_emailController.text))) {
          if (_passwordController.text.isNotEmpty) {
            if( _passwordController.text.length > 5){
              if (_passwordController.text == _reEnteredPasswordController.text) {
                if (checkBoxValue == true) {
                  await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                      email: _emailController.text,
                      password: _passwordController.text)
                      .then((v) {
                    if (v.user?.uid!=null) {
                      uploadToDB(v.user);
                    } else {}
                    Navigator.pop(context);
                  });
                }
                else {
                    Fluttertoast.showToast(
                    msg: "Please Accept Terms And Conditions",
                    backgroundColor: Color(0xff6ca499),
                    fontSize: 20,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.TOP,
                    timeInSecForIosWeb: 1,
                  );
                }
              }
              else {
                  Fluttertoast.showToast(
                  msg: "Password Does Not Match",
                  backgroundColor: Color(0xff6ca499),
                  fontSize: 20,
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.TOP,
                  timeInSecForIosWeb: 1,
                );
              }
            }
            else{
                Fluttertoast.showToast(
                msg: "Please Enter 6 Digits Password",
                backgroundColor: Color(0xff6ca499),
                fontSize: 20,
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.TOP,
                timeInSecForIosWeb: 1,
              );
            }
          }
          else {
              Fluttertoast.showToast(
              msg: "Please Enter Password",
              backgroundColor: Color(0xff6ca499),
              fontSize: 20,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              timeInSecForIosWeb: 1,
            );
          }
        }
        else {
            Fluttertoast.showToast(
            msg: "Please Enter A Valid Email",
            backgroundColor: Color(0xff6ca499),
            fontSize: 20,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
          );
        }
      }
      else {
          Fluttertoast.showToast(
          msg: "Please Enter Phone Number",
          backgroundColor: Color(0xff6ca499),
          fontSize: 20,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
        );
      }
    }
    else{
        Fluttertoast.showToast(
        msg: "Please Enter First Name",
        backgroundColor: Color(0xff6ca499),
        fontSize: 20,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
      );
    }
  }

  uploadToDB(User? user){
    FirebaseFirestore.instance.collection("User").doc(user?.uid).set({
      "email": user?.email,
      "uid": user?.uid,
      "first_name": _fNameController.text,
      "last_name": _lNameController.text,
      "phone_number": _phoneNoController.text,
    });
  }
  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(p);
    return regExp.hasMatch(em);
  }
}
