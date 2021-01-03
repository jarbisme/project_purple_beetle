import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:project_purple_beetle/components/my_icon_button.dart';

import '../constants.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // IconButton(
              //   icon: Icon(
              //     FeatherIcons.arrowLeft,
              //     size: 36,
              //     color: kPrimaryColor,
              //   ),
              //   onPressed: () {},
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: Text(
                  'Purple Beetle',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              MyIconButton(icon: FeatherIcons.cornerUpLeft),
              MyIconButton(icon: FeatherIcons.clock),
            ],
          ),
        ],
      ),
    );
  }
}
