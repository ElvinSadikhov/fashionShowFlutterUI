import 'package:flutter/material.dart';
import 'package:ui_task_1/screens/main_screen.dart';
import 'package:ui_task_1/utils/constants.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primaryColor: COLOR_WHITE, textTheme: DEFAULT_TEXT_THEME),
      home: MainScreen(),
    );
  }
}

void main() {
  runApp(Main());
}
