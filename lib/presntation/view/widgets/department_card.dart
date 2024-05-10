import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';

Widget buildDepartment(BuildContext context, String healine, String subTitle,
        int index, String image, VoidCallback fun) =>
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                height: context.height * 0.2,
                width: context.width * 0.2,
              ),
              SizedBox(
                width: context.width * 0.02,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    healine,
                    style: getMediumStyle(color: AppColors.black, fontSize: 18),
                  ),
                  SizedBox(
                    height: context.height * 0.15,
                    width: context.width * 0.7,
                    child: Text(
                      subTitle,
                      style:
                          getMediumStyle(color: AppColors.grey, fontSize: 13),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: context.width * 0.5,
                      ),
                      TextButton(
                          onPressed: fun,
                          child: Row(
                            children: [
                              Text(
                                "المزيد",
                                style: getBoldStyle(
                                    color: AppColors.primary, fontSize: 15),
                              )
                            ],
                          )),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
