import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final double width;
  const RoundedButton(
      {Key key,
      this.text,
      this.press,
      this.color = Colors.teal,
      this.textColor = Colors.white,
      this.width = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double widthset = 0;
    if (this.width == 0) {
      widthset = size.width * 0.8;
    } else {
      widthset = width;
    }
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: widthset,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          // color: Colors.teal[700],
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
