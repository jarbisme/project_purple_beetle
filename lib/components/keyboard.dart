import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:project_purple_beetle/components/my_button.dart';
import 'package:project_purple_beetle/constants.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({
    Key key,
    @required this.onTap,
  }) : super(key: key);

  final Function(String) onTap;

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
                        symbol: 'C',
                        foreground: kSecundaryColor,
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '+/-',
                        foreground: kSecundaryColor,
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '%',
                        icon: FeatherIcons.percent,
                        foreground: kSecundaryColor,
                        onTap: onTap,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      MyButton(
                        symbol: '7',
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '8',
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '9',
                        onTap: onTap,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      MyButton(
                        symbol: '4',
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '5',
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '6',
                        onTap: onTap,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      MyButton(
                        symbol: '1',
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '2',
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '3',
                        onTap: onTap,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      MyButton(
                        symbol: 'fn',
                        background: kPrimaryColor.withOpacity(0.1),
                        functionBtn: true,
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '0',
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '.',
                        onTap: onTap,
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
                        symbol: 'x',
                        icon: FeatherIcons.x,
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '/',
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '-',
                        icon: FeatherIcons.minus,
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '+',
                        icon: FeatherIcons.plus,
                        onTap: onTap,
                      ),
                      MyButton(
                        symbol: '=',
                        background: kPrimaryColor,
                        foreground: Colors.white,
                        floating: true,
                        onTap: onTap,
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
