import 'package:flutter/material.dart';
import 'package:quiz/quizscreen.dart';


class ResultScreen extends StatelessWidget {

  final int score;

  ResultScreen({this.score});

  @override
  Widget build(BuildContext context) {
     // page
    return Scaffold(
      backgroundColor: Color(0xFF2D046E),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            // it can accept multiple widgets
            children: <Widget>[

              SizedBox(
                height: 90,
              ),

              Center(
                child: Image(
                  image: AssetImage("assets/icon-circle.png"),
                  width: 300,
                  height: 300,
                ),
              ),

              Text(
                "Result",
                style: TextStyle(
                  color: Color(0xFFA20CBE),
                  fontSize: 35,
                ),
              ),

              Text(
                "$score/10",
                style: TextStyle(
                  color: Color(0xFFFFBA00),
                  fontSize: 60,
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 40, 
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(
                    vertical: 10, 
                    horizontal: 20
                  ),
                  child: Text(
                    "RESTART",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  color: Color(0xFFFFBA00),
                  textColor: Colors.white,
                  onPressed: () {
                    // goto quiz screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizScreen(),
                      ),
                    );
                    
                  },
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(
                    vertical: 10, 
                    horizontal: 20
                  ),
                  child: Text(
                    "EXIT",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  color: Color(0xFF511AA8),
                  textColor: Colors.white,
                  onPressed: () {
                    // exit
                    Navigator.pop(context);
                    
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}