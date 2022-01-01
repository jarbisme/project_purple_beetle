import 'package:flutter/material.dart';
import 'package:project_purple_beetle/components/keyboard.dart';
import 'package:project_purple_beetle/components/my_appbar.dart';
import 'package:project_purple_beetle/components/result_screen.dart';
import 'package:project_purple_beetle/components/var_section.dart';
import 'package:project_purple_beetle/constants.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double result = 768;
  List<String> formula = [];

  void updateFormulta(newValue) {
    setState(() {
      formula.add(newValue);
    });
    print(formula);
  }

  void handleKey(key) {
    switch (key) {
      case 'C':
        setState(() {
          formula.clear();
        });
        break;
      default:
        updateFormulta(key);
        break;
    }
  }

  void calculate() {
    formula.forEach((value) => {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            MyAppbar(),
            Expanded(
              child: ResultScreen(
                formula: formula,
                result: result.toString(),
              ),
            ),
            VarSection(),
            Keyboard(
              onTap: handleKey,
            ),
          ],
        ),
      ),
    );
  }
}
