import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/models/courses_model.dart';
import 'package:url_launcher/url_launcher.dart';

Widget buildCoursPost(BuildContext context, int index, Courses model) =>
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
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  model.name,
                  style: getMediumStyle(color: AppColors.black, fontSize: 18),
                ),
                Text(
                  model.description,
                  style: getMediumStyle(color: AppColors.grey, fontSize: 13),
                ),
                Text(
                  model.instructor,
                  style: getMediumStyle(color: AppColors.grey, fontSize: 13),
                ),
                TextButton(
                    onPressed: () async {
                      final url = Uri.parse(model.link);
                      // ignore: deprecated_member_use
                      if (await canLaunch("$url")) {
                        await launchUrl(url);
                      }
                    },
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
      ),
    );
