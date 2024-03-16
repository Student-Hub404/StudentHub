import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';

class SolidarityFundScreen extends StatelessWidget {
  const SolidarityFundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(EneftyIcons.arrow_left_3_outline)),
          title: Text(
            "صندوق التكافل ",
            style: getBoldStyle(color: AppColors.black, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  Text(
                    "صندوق التكافل",
                    style: getBoldStyle(color: AppColors.black, fontSize: 15),
                  ),
                  Container(
                    width: context.width * 0.36,
                    height: 1,
                    color: AppColors.primary,
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  Text(
                    "اكتشاف المواهب الفنيه بين الطلاب وتنميتها وتشجيعها كذلك اقامه المعارض الفنيه والحفلات لاظهار مواهب الطلاب وتشجيعهم",
                    style: getBoldStyle(color: AppColors.grey, fontSize: 15),
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
