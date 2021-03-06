import 'package:flutter/material.dart';
import 'package:ui_task_1/custom/border_icon.dart';
import 'package:ui_task_1/sample_data.dart';
import 'package:ui_task_1/utils/constants.dart';
import 'package:ui_task_1/utils/widget_methods.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BorderIcon(
                    child: const Icon(
                      Icons.short_text_rounded,
                      size: 35,
                    ),
                    onTap: () {
                      debugPrint("MenuButton is being tapped!");
                    }),
                BorderIcon(
                  child: const Icon(
                    Icons.search,
                    size: 35,
                  ),
                  onTap: () {
                    debugPrint("SearchButton is being tapped!");
                  },
                )
              ],
            ),
          ),
          WidgetMethods.verticalSpace(15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: AppConstants.getPaddings.kDefaultPadding),
                    child: SizedBox(
                      child: Text(
                        "Week in Paris",
                        style: themeData.textTheme.headline1,
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(
                    left: AppConstants.getPaddings.kDefaultPadding),
                child: SizedBox(
                  child: Text(
                    "2021 Fashion show in Paris",
                    style: themeData.textTheme.headline2,
                  ),
                ),
              )
            ],
          ),
          WidgetMethods.verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppConstants.getPaddings.kDefaultPadding),
                child: Text(
                  "Explore",
                  style: themeData.textTheme.headline3,
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstants.getPaddings.kDefaultPadding),
                  child: BorderIcon(
                    height: 40,
                    width: 40,
                    child: const Icon(
                      Icons.filter_list,
                      size: 25,
                    ),
                    onTap: () {
                      debugPrint("FilterButton is being tapped!");
                    },
                  ))
            ],
          ),
          WidgetMethods.verticalSpace(5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
                children: [
              ["Recommended", "Recommended is being tapped!"],
              ["New Models", "NewModels is being tapped!"],
              ["2020 Show", "2020Show is being tapped!"]
            ]
                    .map((args) => ChoiceOption(
                          text: args[0],
                          onTapMessage: args[1],
                        ))
                    .toList()),
          ),
          WidgetMethods.verticalSpace(12),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PersonItem(model: AppData.getMainScreenData.getModels[0]),
                PersonItem(model: AppData.getMainScreenData.getModels[1])
              ],
            ),
          ),
          WidgetMethods.verticalSpace(20),
          SizedBox(
            height: 160,
            width: 330,
            child: DecoratedBox(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: AppConstants.getColors.purple
                        .withRed(90)
                        .withAlpha(120),
                    spreadRadius: 5,
                    blurRadius: 25,
                    blurStyle: BlurStyle.normal,
                    offset: const Offset(0, 15)),
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  AppData.getMainScreenData.getModels[2].getImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class ChoiceOption extends StatelessWidget {
  final String text;
  final String onTapMessage;

  const ChoiceOption({Key? key, required this.text, required this.onTapMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return GestureDetector(
      onTap: () {
        debugPrint(onTapMessage);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppConstants.getColors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
        margin: const EdgeInsets.only(left: 25),
        child: Text(
          text,
          style: themeData.textTheme.headline4,
        ),
      ),
    );
  }
}

class PersonItem extends StatelessWidget {
  final ModelShortcut model;

  const PersonItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: AppConstants.getColors.purple.withRed(90).withAlpha(120),
                spreadRadius: 5,
                blurRadius: 25,
                blurStyle: BlurStyle.normal,
                offset: const Offset(0, 15)),
          ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              model.getImage,
              height: 200,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        WidgetMethods.verticalSpace(15),
        Container(
          margin: const EdgeInsets.only(left: 12),
          child: SizedBox(
            child: Text(
              model.getName!,
              style: themeData.textTheme.headline5,
            ),
          ),
        ),
        WidgetMethods.verticalSpace(5),
        Container(
            margin: const EdgeInsets.only(left: 12),
            child: SizedBox(
                child: Text(
              model.getCity!,
              style: themeData.textTheme.headline6,
            ))),
      ],
    );
  }
}
