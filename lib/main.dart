import 'package:flutter/material.dart';
import 'package:ui_task_1/screens/main_screen.dart';
import 'package:ui_task_1/screens/second_screen.dart';
import 'package:ui_task_1/utils/constants.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: COLOR_WHITE, textTheme: TEXT_THEME_FIRST_SCREEN),
      home: const MainScreen(),
      // theme: ThemeData(textTheme: TEXT_THEME_SECOND_SCREEN),
      // home: const SecondScreen(),
    );
  }
}

void main() {
  runApp(const Main());
}
