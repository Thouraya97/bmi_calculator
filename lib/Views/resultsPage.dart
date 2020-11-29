import 'package:flutter/material.dart';
import '../Constants/constants.dart';
import '../Widgets/reusableContainer.dart';
import '../Widgets/BottomButton.dart';
import '../Calculation/Calculator.dart';

class ResultsPage extends StatelessWidget {
ResultsPage({@required this.bmiResult, @required this.resultText, @required this.tips});

  final String bmiResult;
  final String resultText;
  final String tips;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitlestyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableContainer(
                couleur: kCurrentColor,
                containerChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiText,
                    ),
                    Text(
                      tips,
                      style: kBodytext,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )),
          BottomButton(
              onTap: () => Navigator.pop(context), title: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
