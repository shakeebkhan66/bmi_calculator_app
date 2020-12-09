import 'package:bmi_calculator_app/constantFile.dart';
import 'package:flutter/material.dart';
import 'constantFile.dart';
import 'ContainerFile.dart';
import 'input_page.dart';
import 'Brain.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Results of Inputs',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Times New Roman',
              fontSize: 28.0,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: sTitle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: RepeatContainerCode(
              colors: activeColor,
              CardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: sResult,
                  ),
                  Text(
                    bmiResult,
                    style: sBMI,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: sBody,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Recalculate',
                    style: sButton,
                  ),
                ),
                color: Colors.amber,
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                width: double.infinity,
                height: 80.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
