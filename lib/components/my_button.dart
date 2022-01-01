import 'package:flutter/material.dart';
import 'package:project_purple_beetle/constants.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key key,
    this.background,
    this.foreground,
    this.icon,
    @required this.symbol,
    this.floating = false,
    this.functionBtn = false,
    @required this.onTap,
  }) : super(key: key);

  final Color background;
  final Color foreground;
  final IconData icon;
  final String symbol;
  final bool floating;
  final bool functionBtn;
  final Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Container(
          constraints: BoxConstraints(maxHeight: 100.0, minHeight: 60.0),
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            boxShadow: floating
                ? [
                    BoxShadow(
                      color: Color(0xFF450834).withOpacity(0.5),
                      offset: Offset(0, 3),
                      blurRadius: 20,
                    )
                  ]
                : null,
          ),
          child: MaterialButton(
            elevation: 0,
            highlightElevation: floating ? 1 : 0,
            splashColor: foreground != null
                ? foreground.withOpacity(0.3)
                : kPrimaryColor.withOpacity(0.3),
            highlightColor: foreground != null
                ? foreground.withOpacity(0.1)
                : kPrimaryColor.withOpacity(0.1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: background ?? null,
            child: icon != null
                ? Icon(
                    icon,
                    size: 36,
                    color: foreground ?? kPrimaryColor,
                  )
                : Text(
                    this.symbol ?? '?',
                    style: TextStyle(
                      fontSize: functionBtn ? 25 : 32,
                      fontWeight: functionBtn ? FontWeight.bold : null,
                      color: foreground ?? kPrimaryColor,
                    ),
                  ),
            onPressed: () {
              onTap(this.symbol);
              print('Key ' + this.symbol + ' pressed');
            },
          ),
        ),
      ),
    );
  }
}
