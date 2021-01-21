import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';
import 'package:google_fonts/google_fonts.dart';


class BottomButton extends StatelessWidget {

  BottomButton({@required this.buttonTitle, @required this.onTap});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        alignment: Alignment.center,
        child: Text(
          buttonTitle,
          style: GoogleFonts.getFont(
            'Raleway',
            fontSize: 25.0,
          ),
        ),
        color: kBottomBarColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
