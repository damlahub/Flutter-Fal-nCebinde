import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

int answerIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  List<String> answers = [
    'BİR TIKLA FALIN CEBİNDE.',
    "AŞK 1",
    "AŞK 2",
    "AŞK 3",
    "AŞK 4",
    "AŞK 5",
    "PARA 1",
    "PARA 2",
    "PARA 3",
    "PARA 4",
    "PARA 5",
    "AİLE 1",
    "AİLE 2",
    "AİLE 3",
    "AİLE 4",
    "AİLE 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[500],
        title: Text(
          'FALIN CEBİNDE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 170,
                margin: EdgeInsets.only(
                    bottom: 10,
                    top:10
                ),
                child: Image.asset('assets/images/logo.png'),
            ),
            Card(
              color: Colors.red,
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                    Icons.favorite,
                    color: Colors.white
                ),
                title: Text(
                  'AŞK DURUMU',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  setState(() {
                    answerIndex = Random().nextInt(5) + 1;
                  });
                },
              ),
            ),
            Card(
              color: Colors.green,
              margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 40.0
              ),
              child: ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                title: Text(
                  'PARA DURUMU',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  setState(() {
                    answerIndex = Random().nextInt(5) + 6;
                  });
                },
              ),
            ),
            Card(
              color: Colors.blue,
              margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 40.0
              ),
              child: ListTile(
                leading: Icon(
                  Icons.family_restroom,
                  color: Colors.white,
                ),
                title: Text(
                  'AİLE DURUMU',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  setState(() {
                    answerIndex = Random().nextInt(5) + 11;
                  });
                },
              ),
            ),
            Container(
                color: Colors.yellow[50],
                margin: EdgeInsets.all(20),
                height: 160,
                width: double.infinity,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 20.0
                        ),
                    child: Text(
                      answers[answerIndex],
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ))),
          ],
        ),
      ),
    );
  }
}
