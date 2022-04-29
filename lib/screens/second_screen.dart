import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ui_task_1/sample_data.dart';
import 'package:ui_task_1/custom/border_icon.dart';
import 'package:ui_task_1/utils/constants.dart';
import 'package:ui_task_1/utils/widget_functions.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final sizeOfScreen = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // photo
            Image.asset(
              FA_SECOND_PAGE_DATA["image"]!,
              height: sizeOfScreen.height,
              width: sizeOfScreen.width,
              fit: BoxFit.cover,
            ),
            //everything else
            Column(
              children: [
                addVerticalSpace(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: BorderIcon(
                        child: const Icon(Icons.arrow_back_ios_rounded,
                            color: COLOR_WHITE),
                        height: 30,
                        width: 30,
                        onTap: () => debugPrint("BackButton is being tapped!"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: BorderIcon(
                        child: const Icon(Icons.more_vert_rounded,
                            color: COLOR_WHITE),
                        height: 30,
                        width: 30,
                        onTap: () =>
                            debugPrint("OptionButton is being tapped!"),
                      ),
                    ),
                  ],
                ),
                addVerticalSpace(80),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => {debugPrint("Comment is being tapped!")},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: ProfileInfo(
                            child: const Icon(Icons.message_outlined,
                                color: COLOR_WHITE),
                            text: FA_SECOND_PAGE_DATA["comments count"]!,
                            height: 30,
                            width: 30,
                            onTap: () =>
                                debugPrint("CommentButton is being tapped!"),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {debugPrint("Like is being tapped")},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: ProfileInfo(
                            child: const Icon(Icons.favorite_border,
                                color: COLOR_WHITE),
                            text: FA_SECOND_PAGE_DATA["likes count"]!,
                            height: 30,
                            width: 30,
                            onTap: () =>
                                debugPrint("LikeButton is being tapped!"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ProfileInfo(
                          child: const Icon(Icons.watch_later_outlined,
                              color: COLOR_WHITE),
                          text: FA_SECOND_PAGE_DATA["watched count"]!,
                          height: 30,
                          width: 30,
                          onTap: () => {},
                        ),
                      ),
                    )
                  ],
                ),
                addVerticalSpace(215),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                          child: Container(
                            height: 200,
                            color: COLOR_GREY.withOpacity(0.5),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 10, 0, 0),
                                      child: Text(
                                        FA_SECOND_PAGE_DATA["name"]!,
                                        style: themeData.textTheme.headline2,
                                      ),
                                    ),
                                  ),
                                  addVerticalSpace(20),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Text(
                                          FA_SECOND_PAGE_DATA["info"]!,
                                          style: themeData.textTheme.headline3,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 15,
                        right: 35,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          child: GestureDetector(
                            onTap: () =>
                                {debugPrint("FollowButton is being tapped!")},
                            child: Container(
                              color: COLOR_RED.shade900,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    addHorizontalSpace(5),
                                    Text(
                                      "Follow",
                                      style: themeData.textTheme.headline4,
                                    ),
                                    addHorizontalSpace(10),
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: COLOR_WHITE,
                                          shape: BoxShape.circle),
                                      child: const Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(
                                          Icons.add,
                                          color: COLOR_BLACK,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                    addHorizontalSpace(3),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final Widget child;
  final double height, width;
  final String text;
  final Function onTap;

  const ProfileInfo(
      {Key? key,
      required this.child,
      required this.height,
      required this.width,
      required this.text,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return SizedBox(
      width: width,
      child: Column(
        children: [
          BorderIcon(
            child: child,
            height: height,
            width: width,
            onTap: onTap,
          ),
          Center(
            child: Text(
              text,
              style: themeData.textTheme.headline1,
            ),
          )
        ],
      ),
    );
  }
}
