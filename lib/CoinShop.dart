
import 'package:flutter/material.dart';
import 'package:quiz/AppBar.dart';
import 'package:quiz/Settings.dart';

class CoinShop extends StatefulWidget {
  @override
  _CoinShopState createState() => _CoinShopState();
}

class _CoinShopState extends State<CoinShop> {
  final List list = [
    {
      "pic": "images/dollarcoin.png",
      "coins": '500',
      "price": "RS 320.00",
    },
    {
      "pic": "images/coinshop2.png",
      "coins": '750',
      "price": "RS 500.00",
    },
    {
      "pic": "images/coinshop3.png",
      "coins": '900',
      "price": "RS 750.00",
    },
    {
      "pic": "images/coinshop4.png",
      "coins": '1200',
      "price": "RS 1000.00",
    },
    {
      "pic": "images/coinshop5.png",
      "coins": '1500',
      "price": "RS 1300.00",
    },
    {
      "pic": "images/coinshop6.png",
      "coins": "One Month",
      "price": "RS 1500.00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: aBar(context, 'Coin Shop'),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/background.png'),
              )),
          child: GridView.builder(
              padding: EdgeInsets.only(top: 50, left: 10, right: 10),
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .65,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 10),
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/shopbackground.png'),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 75),
                        child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Image(
                                    image: AssetImage(list[index]['pic']),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  list[index]['coins'],
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),

                            ]),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                          padding: EdgeInsets.only(top: 30, bottom: 30),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff6CA499),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(list[index]['price'],
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18))),
                    ),
                  ],
                );
              }),
        ));
  }
}
