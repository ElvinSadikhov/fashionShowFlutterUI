import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:ui_task_1/custom/border_icon.dart';
import 'package:ui_task_1/sample_data.dart';
import 'package:ui_task_1/utils/constants.dart';
import 'package:ui_task_1/utils/widget_functions.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);

    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                BorderIcon(
                  height: 40,
                  width: 40,
                  child: Icon(Icons.short_text_rounded),
                ),
                BorderIcon(
                  height: 40,
                  width: 40,
                  child: Icon(Icons.search),
                )
              ],
            ),
          ),
          addVerticalSpace(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: SizedBox(
                      child: Text(
                        "Week in Paris",
                        style: themeData.textTheme.headline1,
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: SizedBox(
                  child: Text(
                    "2021 Fashion show in Paris",
                    style: themeData.textTheme.headline2,
                  ),
                ),
              )
            ],
          ),
          addVerticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Explore",
                  style: themeData.textTheme.headline3,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: BorderIcon(
                    height: 40, width: 40, child: Icon(Icons.filter_list)),
              )
            ],
          ),
          addVerticalSpace(5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
                children: ["Recommended", "New Models", "2020 Show"]
                    .map((filter) => ChoiceOption(text: filter))
                    .toList()),
          ),
          addVerticalSpace(10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PersonItem(itemData: FA_DATA[0]),
                PersonItem(itemData: FA_DATA[1])
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: COLOR_WHITE,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(left: 25),
      child: Text(
        text,
        style: themeData.textTheme.headline4,
      ),
    );
  }
}

class PersonItem extends StatelessWidget {
  final dynamic itemData;

  const PersonItem({Key? key, this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: COLOR_PURPLE.withRed(90).withAlpha(90),
                spreadRadius: 5,
                blurRadius: 25,
                blurStyle: BlurStyle.normal,
                offset: const Offset(0, 15)),
          ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              itemData["image"],
              height: 200,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
        ),
        addVerticalSpace(15),
        Container(
          margin: const EdgeInsets.only(left: 12),
          child: SizedBox(
            child: Text(
              itemData["name"],
              style: themeData.textTheme.headline5,
            ),
          ),
        ),
        addVerticalSpace(5),
        Container(
            margin: const EdgeInsets.only(left: 12),
            child: SizedBox(
                child: Text(
              itemData["city"],
              style: themeData.textTheme.headline6,
            ))),
      ],
    );
  }
}