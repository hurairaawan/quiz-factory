import 'package:flutter/material.dart';
import 'package:quiz/AppBar.dart';
import 'package:quiz/utilities/colors.dart';

class AddQuestions extends StatefulWidget {
  const AddQuestions({Key? key}) : super(key: key);

  @override
  _AddQuestionsState createState() => _AddQuestionsState();
}

class _AddQuestionsState extends State<AddQuestions> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: aBar(context, 'Add Question'),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.fill,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              color: Color(0xff8FA7A2),
              child: Text(
                'Time to add your own question',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xff6ca499), width: 2))),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 17),
                      decoration: InputDecoration(
                        hintText: 'Type your question here',
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  options('Add Choice A'),
                  options('Add Choice B'),
                  options('Add Choice C'),
                  options('Add Choice D'),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  i = 1;
                  });
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                width: MediaQuery.of(context).size.width * .5,
                decoration: BoxDecoration(
                  color: i == 1 ? primaryColor : primaryColor.withOpacity(0),
                  border: i == 1
                      ? Border.all(width: 0)
                      : Border.all(color: Colors.white, width: 0.8),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
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
                      onTap: () {},
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
    );
  }

  options(String opt) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * .5,
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Color(0xff6ca499), width: 2))),
      child: TextFormField(
        style: TextStyle(color: Colors.white, fontSize: 17),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: opt,
          hintStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
