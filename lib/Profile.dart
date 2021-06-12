import 'package:flutter/material.dart';
import 'package:quiz/AppBar.dart';
import 'package:quiz/utilities/colors.dart';



class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: aBar(context,'Profile'),
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/background.png'),
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin:EdgeInsets.only(top: 20),
                  height: MediaQuery.of(context).size.height*.12,
                  width: MediaQuery.of(context).size.width*.65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                    color: Color(0xff6CA499),
                  ),
                  child:Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin:EdgeInsets.only(top: 5,bottom: 5),
                            // color: Colors.black,
                            height: MediaQuery.of(context).size.height*.12,
                            width: MediaQuery.of(context).size.width*.3,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                            ),

                          ),
                          Positioned(
                            top:  50,
                            left: 50,
                            child: Container(
                              height: MediaQuery.of(context).size.height*.05,
                              width: MediaQuery.of(context).size.width*.20,
                              decoration: BoxDecoration(
                                //color: Colors.red,
                                  image: DecorationImage(
                                    image: AssetImage('images/profileedit.png'),
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text('Username',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30,top: 5),
                            child: Text('600 pts',style: TextStyle(color: Colors.white,fontSize: 10),),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30,top: 5),
                            child: Text('Level 1',style: TextStyle(color: Colors.white,fontSize: 10),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,),
                  height: MediaQuery.of(context).size.height*.12,
                  width: MediaQuery.of(context).size.width*.2,
                  decoration: BoxDecoration(
                    color: Color(0xff8fa7a2),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:10),
                        height: MediaQuery.of(context).size.height*.06,
                        width: MediaQuery.of(context).size.width*.1,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/dollarcoin.png')
                            )
                        ),
                      ),
                      Container(
                        child: Text('500',style: TextStyle(fontSize: 15,color: Colors.white),),
                      ),
                    ],
                  )
                  ,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top:20),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width*.85,
              height: MediaQuery.of(context).size.height*.05,
              color: Color(0xff8FA7A2),
              child: Text('STATISTICS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 11),),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 0),
              width: MediaQuery.of(context).size.width*.85,
              height: MediaQuery.of(context).size.height*.2,
              color: Color(0xff6CA499),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Games :',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white,),),
                      Text('00',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Question :',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white,),),
                      Text('00',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Correct Answers :',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white,),),
                      Text('00',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Incorrect Answers :',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white,),),
                      Text('00',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Percentage :',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white,),),
                      Text('00%',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    horizontalTitleGap: 0,
                    dense: true,
                    leading: Icon(Icons.phone,color: iconColor),
                    title:Text('Phone Number:',style: TextStyle(color: Colors.white,fontSize: 18),),
                    trailing: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Verify',style: TextStyle(color: Colors.white,fontSize: 18)),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 0,

                    leading: Icon(Icons.mail,color: iconColor,),
                    title:Text('E-Mail:',style: TextStyle(color: Colors.white,fontSize: 18),),
                    trailing: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Verify',style: TextStyle(color: Colors.white,fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
