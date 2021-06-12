import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/AppBar.dart';



class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

  final List list  = ["Polo", "Hockey", "Foot Ball", "Cricket"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: aBar(context, 'Level 1'),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.fill,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*.25,
              color: Colors.white,
            ),
            Text('Q: Oval stadium in England is associated with ?',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
           Container(
             height: MediaQuery.of(context).size.height*.25,
             child: GridView.builder(
                  itemCount: 4,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount:2,
                   childAspectRatio: 2,
                     crossAxisSpacing: 30,
                     mainAxisSpacing: 20,
                 ),
               itemBuilder: (BuildContext context,int index){
                   return Container(
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(40),
                     ),
                     child: Center(
                       child: Text(list[index],
                         style: TextStyle(
                         fontSize: 18, color: Colors.black),
                   ),
                     ),
                   );
               }
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
    );
  }
}
