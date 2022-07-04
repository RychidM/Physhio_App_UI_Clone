import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_app/misc/colors.dart';

class SmallText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  SmallText({Key? key, required this.text,  this.size = 15, this.color=Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: size,
            color: color,
          )
        ),
    );
  }
}