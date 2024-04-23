import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/style_manager.dart';

Widget buildCoursPost(BuildContext context, String healine, String subTitle,
        int index, VoidCallback fun) =>
    AnimationConfiguration.staggeredList(
      position: index,
      delay: const Duration(milliseconds: 100),
      child: SlideAnimation(
        duration: const Duration(milliseconds: 2500),
        curve: Curves.fastLinearToSlowEaseIn,
        horizontalOffset: -300,
        verticalOffset: -850,
        child: Material(
          borderRadius: BorderRadius.circular(20),
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                //"Nature and animal science"
                healine,
                style: getMediumStyle(color: AppColors.black, fontSize: 18),
              ),
              Text(
                subTitle,
                style: getMediumStyle(color: AppColors.grey, fontSize: 13),
              ),
              TextButton(
                  onPressed: fun,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        EneftyIcons.book_2_outline,
                        color: AppColors.primary,
                        size: 25,
                      ),
                      Text(
                        "انضمام",
                        style: getBoldStyle(
                            color: AppColors.primary, fontSize: 15),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
