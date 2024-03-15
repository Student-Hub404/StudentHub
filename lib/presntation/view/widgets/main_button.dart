import 'package:flutter/material.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';

Widget mainButton(BuildContext context,
        {required VoidCallback onpressd,
        required Color background,
        required String text,
        required double width}) =>
    Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
      child: MaterialButton(
        minWidth: width,
        height: context.height * 0.07,
        onPressed: onpressd,
        color: background,
        child: Text(
          text,
          style: getBoldStyle(color: AppColors.white, fontSize: 20),
        ),
      ),
    );
