import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:project_purple_beetle/constants.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Container(
                // height: 100.0,
                // color: kPrimaryColor,
                ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20.0, right: 5.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'UNI + (Transport + Food) * 4',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: kPrimaryColor.withOpacity(0.3),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '76,512',
                        style: TextStyle(
                          fontSize: 64,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        FeatherIcons.delete,
                        size: 25.0,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: kPrimaryColor.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
