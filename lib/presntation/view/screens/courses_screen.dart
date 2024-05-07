import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/presntation/manager/cubit/courses_cubit.dart';
import 'package:student_hub/presntation/manager/states/courses_state.dart';
import 'package:student_hub/presntation/view/widgets/courses_post.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoursesCubit()..getCourses(),
      child: BlocConsumer<CoursesCubit, CoursesStates>(
        listener: (context, state) {},
        builder: (context, state) {
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
              body: BlocBuilder<CoursesCubit, CoursesStates>(
                builder: (context, state) {
                  if (state is CoursesLoadingState) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primary,
                      ),
                    );
                  } else if (state is CoursesSuccessState) {
                    return Directionality(
                      textDirection: TextDirection.rtl,
                      child: Column(children: [
                        AnimationLimiter(
                          child: Expanded(
                            child: ListView.separated(
                                padding: const EdgeInsets.all(15),
                                physics: const BouncingScrollPhysics(
                                    parent: AlwaysScrollableScrollPhysics()),
                                itemCount:
                                    CoursesCubit.get(context).courses.length,
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: context.height * 0.02),
                                itemBuilder: (context, index) => buildCoursPost(
                                    context,
                                    index,
                                    context
                                        .watch<CoursesCubit>()
                                        .courses[index])),
                          ),
                        ),
                      ]),
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Image.asset(
                          "assets/images/server cnect.png",
                          height: context.height * 0.4,
                        )),
                        SizedBox(
                          height: context.height * 0.03,
                        ),
                        Text(
                          "لا يتوفر اتصال بالانترنت",
                          style: getBoldStyle(
                              color: AppColors.black, fontSize: 25),
                        )
                      ],
                    );
                  }
                },
              ));
        },
      ),
    );
  }
}
