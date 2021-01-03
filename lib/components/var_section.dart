import 'package:flutter/material.dart';
import 'package:project_purple_beetle/constants.dart';

class VarSection extends StatefulWidget {
  @override
  _VarSectionState createState() => _VarSectionState();
}

class _VarSectionState extends State<VarSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      height: 60.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            width: 75.0,
            child: OutlineButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: kPrimaryColor,
              highlightColor: kSecundaryColor.withOpacity(0.1),
              highlightedBorderColor: kSecundaryColor.withOpacity(0.5),
              splashColor: kSecundaryColor.withOpacity(0.3),
              borderSide: BorderSide(color: kSecundaryColor, width: 2.5),
              child: Text(
                'var',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kSecundaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
