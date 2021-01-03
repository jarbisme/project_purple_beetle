import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:project_purple_beetle/components/my_button.dart';
import 'package:project_purple_beetle/constants.dart';

class Keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      MyButton(
                        text: 'C',
                        foreground: kSecundaryColor,
                      ),
                      MyButton(
                        text: '+/-',
                        foreground: kSecundaryColor,
                      ),
                      MyButton(
                        text: '%',
                        icon: FeatherIcons.percent,
                        foreground: kSecundaryColor,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      MyButton(
                        text: '7',
                      ),
                      MyButton(
                        text: '8',
                      ),
                      MyButton(
                        text: '9',
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      MyButton(
                        text: '4',
                      ),
                      MyButton(
                        text: '5',
                      ),
                      MyButton(
                        text: '6',
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      MyButton(
                        text: '1',
                      ),
                      MyButton(
                        text: '2',
                      ),
                      MyButton(
                        text: '3',
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      MyButton(
                        text: 'fn',
                        background: kPrimaryColor.withOpacity(0.1),
                        functionBtn: true,
                      ),
                      MyButton(
                        text: '0',
                      ),
                      MyButton(
                        text: '.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // operations column
          Flexible(
            child: Container(
              // color: Colors.red,
              child: Stack(
                // fit: StackFit.loose,
                children: [
                  Positioned.fill(
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      // height: 60.0,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MyButton(
                        icon: FeatherIcons.x,
                      ),
                      MyButton(
                        text: '/',
                      ),
                      MyButton(
                        icon: FeatherIcons.minus,
                      ),
                      MyButton(
                        icon: FeatherIcons.plus,
                      ),
                      MyButton(
                        text: '=',
                        background: kPrimaryColor,
                        foreground: Colors.white,
                        floating: true,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
