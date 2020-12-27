import 'package:flutter/cupertino.dart';
import 'package:quiz_app/Screens/QuizPage.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/TrueFalsePage.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}void gotoTrueFalsePage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => TrueFalsePage()),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cet Quiz',
        style: TextStyle(color: Colors.black.withOpacity(0.8)),),
      backgroundColor: Colors.deepOrangeAccent,),
      backgroundColor: Colors.yellowAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: (Image.asset('assets/download.jpg',
        width: 200,
        height: 200,)
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.yellowAccent,
                  width: 5,
                ),

            ),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all((5)),
            child: Center(
              child: Text(
                    'There are 10 questions to answer.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                color: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(10),
                onPressed: () {
                  gotoQuizPage(context);
                },
                child: Text('Multiple Choice'),
              ),
              RaisedButton(
                color: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(10),
                onPressed: () {
                  gotoTrueFalsePage(context);
                },
                child: Text('True/False'),
              )
            ],
          ),

        ],
      ),
    );
  }
}
