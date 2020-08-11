import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D046E),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/icon-circle.png"),
                      width: 70,
                      height: 70,
                    ),
                    Text(
                      '30',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Q. What does CPU stand for?',
                  style: TextStyle(fontSize: 35, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              //options
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),
                child: Column(
                  children: ["Option 1", "Option 2", "Option 3", "Option 4"]
                      .map((option) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        color: Color(0xFF511AAB),
                        onPressed: () {
                          Text(option,style: TextStyle(fontSize: 18),);
                        },
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
