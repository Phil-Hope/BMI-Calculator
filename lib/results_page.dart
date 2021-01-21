import 'package:bmi/bottom_button.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Results extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const Results({Key key, @required this.bmiResult, @required this.resultText, @required this.interpretation}) : super(key: key);

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: GoogleFonts.getFont(
              'Raleway',
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                  'Your Result',
                    style: GoogleFonts.getFont(
                      'Raleway',
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                  ],
                ),
              ),
          ),
        BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            }
        ),
        ],
      ),
    );
  }
}
