import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableIcon extends StatelessWidget {
  ReusableIcon({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,
          size: 80.0,
          color: Color(0xFF8D8E98),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: GoogleFonts.getFont(
            'Raleway',
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
