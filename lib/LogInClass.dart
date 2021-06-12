import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiz/AppRoutes.dart';
import 'package:quiz/MainMenu.dart';
import 'package:quiz/SignUp.dart';
import 'package:quiz/utilities/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';





class LogInClass extends StatefulWidget {
  const LogInClass({Key? key}) : super(key: key);

  @override
  _LogInClassState createState() => _LogInClassState();
}

class _LogInClassState extends State<LogInClass> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            SizedBox(height: 60,),
            Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
               margin: EdgeInsets.only(top: 10),
               height: MediaQuery.of(context).size.height * .2,
              // width: MediaQuery.of(context).size.width * .5,
              child: Image(
                image: AssetImage('images/quizfactorylogo.png'),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(right: 20,left: 20),
              padding: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                color: Color(0xff6CA499),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(height: 3,),
                  fieldName('Email'),
                  textField(_emailController),
                  fieldName('Password'),
                  textField(_passwordController),
                  SizedBox(height: 5,),
                  Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Forgotten Password ?',
                      style:
                      TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                  SizedBox(height: 5,),
                  GestureDetector(
                    onTap: loginAuthentication,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.065,
                       width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff6CA499),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          )),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 0),
                        width: MediaQuery.of(context).size.width * .1,
                        child: Image(
                          image: AssetImage(
                            'images/google.png',
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          AppRoutes.push(context, MainMenu());
                        },
                        child: Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            border: Border.all(color: iconColor),

                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Play As Guest',
                            style: TextStyle(
                                fontSize: 16,color: iconColor, ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .1,
                        margin: EdgeInsets.only(left: 10),
                        child: Image(
                          image: AssetImage('images/facebook.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Don't Have An Account?",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          AppRoutes.push(context, SignUp());
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 17,color: iconColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  fieldName(String name){
    return Container(
      margin: EdgeInsets.only(bottom: 5,top: 10),
      alignment: Alignment.topLeft,
      child: Text(
        name,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
  textField(TextEditingController a){
    return Container(
      height: MediaQuery.of(context).size.height*.075,
      child: TextFormField(
        style: TextStyle(fontSize: 20, color: Colors.white),
        controller: a,
        maxLines: 1,
        cursorHeight: 30,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: Color(0xff8FA7A2),
        ),
      ),
    );
  }
  Future<void> loginAuthentication() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text).
    then((value) => {
      if(value.user!=null)
        {
          AppRoutes.push(context, MainMenu())
        }
    });
  }
}
