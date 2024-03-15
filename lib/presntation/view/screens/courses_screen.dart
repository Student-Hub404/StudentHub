import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/presntation/view/widgets/courses_post.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

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
            "الكورسات",
            style: getBoldStyle(color: AppColors.black, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(children: [
            AnimationLimiter(
              child: Expanded(
                child: ListView.separated(
                    padding: const EdgeInsets.all(15),
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    itemCount: 10,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: context.height * 0.02),
                    itemBuilder: (context, index) => buildCoursPost(
                        context,
                        "مقدمة في الحاسب",
                        "الباب الاول الجزء الثالث",
                        index,
                        () {})),
              ),
            ),
          ]),
        ));
  }
}
