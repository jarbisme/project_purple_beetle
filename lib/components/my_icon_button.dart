import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../constants.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    Key key,
    this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon ?? FeatherIcons.alertCircle,
        size: 25.0,
        color: kPrimaryColor,
      ),
      onPressed: () {},
      highlightColor: kPrimaryColor.withOpacity(0.1),
      splashColor: kPrimaryColor.withOpacity(0.3),
    );
  }
}
