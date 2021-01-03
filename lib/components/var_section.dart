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
      margin: EdgeInsets.symmetric(vertical: 5.0),
      height: 60.0,
      color: kPrimaryColor,
    );
  }
}
