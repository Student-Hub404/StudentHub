import 'dart:developer';

import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/presntation/manager/cubit/competitions_cubit.dart';
import 'package:student_hub/presntation/manager/states/competitions_state.dart';
import 'package:student_hub/presntation/view/widgets/comptition_cards.dart';

class ComptitionScreen extends StatefulWidget {
  const ComptitionScreen({super.key});

  @override
  State<ComptitionScreen> createState() => _ComptitionScreenState();
}

class _ComptitionScreenState extends State<ComptitionScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CompetitionsCubit, CompetitionsStates>(
      listener: (context, state) {
        log("$state");
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(EneftyIcons.arrow_left_3_outline)),
            title: Text(
              "الانشطة الطلابية",
              style: getBoldStyle(color: AppColors.black, fontSize: 20),
            ),
            centerTitle: true,
          ),
          body: BlocBuilder<CompetitionsCubit, CompetitionsStates>(
            builder: (context, state) {
              if (state is CompetitionsLoadingState) {
                return Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                  ),
                );
              } else if (state is CompetitionsSuccessState) {
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(children: [
                    AnimationLimiter(
                      child: Expanded(
                        child: ListView.separated(
                          padding: const EdgeInsets.all(15),
                          physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          itemCount: CompetitionsCubit.get(context)
                              .competitions
                              .length,
                          separatorBuilder: (context, index) =>
                              SizedBox(height: context.height * 0.02),
                          itemBuilder: (context, index) => buildComptitionCard(
                              context,
                              context
                                  .read<CompetitionsCubit>()
                                  .competitions[index]),
                        ),
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
                      style: getBoldStyle(color: AppColors.black, fontSize: 25),
                    )
                  ],
                );
              }
            },
          ),
        );
      },
    );
  }
}
