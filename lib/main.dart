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
            primaryColor: AppConstants.getColors.white,
            textTheme: AppConstants.getThemes.firstScreen),
        home: const MainScreen());
    // return MaterialApp(
    //   theme: ThemeData(textTheme: AppConstants.getThemes.secondScreen),
    //   home: const SecondScreen(),
    // );
  }
}

void main() {
  runApp(const Main());
}
