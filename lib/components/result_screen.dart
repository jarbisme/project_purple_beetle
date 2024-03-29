import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:project_purple_beetle/components/my_icon_button.dart';
import 'package:project_purple_beetle/constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key key,
    @required this.formula,
    @required this.result,
  }) : super(key: key);

  final List<String> formula;
  final String result;

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
            padding: EdgeInsets.only(left: 20.0, right: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  // 'UNI + (Transport + Food) * 4',
                  formula.isEmpty ? '' : formula.toString(),
                  style: TextStyle(
                    fontSize: 16.0,
                    color: kPrimaryColor.withOpacity(0.3),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        result ?? '76,512',
                        style: TextStyle(
                          fontSize: 64,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    MyIconButton(
                      icon: FeatherIcons.delete,
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
