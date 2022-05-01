import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ui_task_1/sample_data.dart';
import 'package:ui_task_1/custom/border_icon.dart';
import 'package:ui_task_1/utils/constants.dart';
import 'package:ui_task_1/utils/widget_methods.dart';

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
              AppData.getSecondScreenData.getModel.getImage,
              height: sizeOfScreen.height,
              width: sizeOfScreen.width,
              fit: BoxFit.cover,
            ),
            //everything else
            Column(
              children: [
                WidgetMethods.verticalSpace(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: BorderIcon(
                        child: Icon(Icons.arrow_back_ios_rounded,
                            color: AppConstants.getColors.white),
                        height: 30,
                        width: 30,
                        onTap: () {
                          debugPrint("BackButton is being tapped!");
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: BorderIcon(
                        child: Icon(Icons.more_vert_rounded,
                            color: AppConstants.getColors.white),
                        height: 30,
                        width: 30,
                        onTap: () {
                          debugPrint("OptionButton is being tapped!");
                        },
                      ),
                    ),
                  ],
                ),
                WidgetMethods.verticalSpace(80),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        debugPrint("Comment is being tapped!");
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: ProfileInfo(
                            child: Icon(Icons.message_outlined,
                                color: AppConstants.getColors.white),
                            text: AppData
                                .getSecondScreenData.getModel.getCommentsCount
                                .toString(),
                            height: 30,
                            width: 30,
                            onTap: () {
                              debugPrint("CommentButton is being tapped!");
                            },
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        debugPrint("Like is being tapped");
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: ProfileInfo(
                            child: Icon(Icons.favorite_border,
                                color: AppConstants.getColors.white),
                            text: AppData
                                .getSecondScreenData.getModel.getLikesCount
                                .toString(),
                            height: 30,
                            width: 30,
                            onTap: () {
                              debugPrint("LikeButton is being tapped!");
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ProfileInfo(
                          child: Icon(Icons.watch_later_outlined,
                              color: AppConstants.getColors.white),
                          text: AppData
                              .getSecondScreenData.getModel.getWatchedCount
                              .toString(),
                          height: 30,
                          width: 30,
                          onTap: () {},
                        ),
                      ),
                    )
                  ],
                ),
                WidgetMethods.verticalSpace(215),
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
                            color: AppConstants.getColors.grey.withOpacity(0.5),
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
                                        AppData.getSecondScreenData.getModel
                                            .getName!,
                                        style: themeData.textTheme.headline2,
                                      ),
                                    ),
                                  ),
                                  WidgetMethods.verticalSpace(20),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Text(
                                          AppData.getSecondScreenData.getModel
                                              .getDescription!,
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
                            onTap: () {
                              debugPrint("FollowButton is being tapped!");
                            },
                            child: Container(
                              color: AppConstants.getColors.red.shade900,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    WidgetMethods.horizontalSpace(5),
                                    Text(
                                      "Follow",
                                      style: themeData.textTheme.headline4,
                                    ),
                                    WidgetMethods.horizontalSpace(10),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: AppConstants.getColors.white,
                                          shape: BoxShape.circle),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Icon(
                                          Icons.add,
                                          color: AppConstants.getColors.black,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                    WidgetMethods.horizontalSpace(3),
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
  final Icon child;
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
