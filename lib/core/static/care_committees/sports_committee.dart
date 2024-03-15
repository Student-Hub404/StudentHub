import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';

class SportsCommiteeScreen extends StatelessWidget {
  const SportsCommiteeScreen({super.key});

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
          "اللجنه الرياضيه",
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
                  "انشطه اللجنه الرياضيه",
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
                  "تعمل لجنه النشاط الرياضى على بث الروح الرياضيه بين الطلاب وتشجيع المواهب الرياضيه على تكوين فرق رياضيه والمنافسه على المسابقات الرياضيه",
                  style: getBoldStyle(color: AppColors.grey, fontSize: 15),
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/football.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "كره القدم",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.50,
                                      ),
                                      Text(
                                        "جماعيه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/volleyball.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "كره الطائره",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.50,
                                      ),
                                      Text(
                                        "جماعيه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/foot5.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "كره القدم الخماسيه",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.38,
                                      ),
                                      Text(
                                        "جماعيه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/handball.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "كره اليد",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.50,
                                      ),
                                      Text(
                                        "جماعيه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/basketball.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "كره السله",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.50,
                                      ),
                                      Text(
                                        "جماعيه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/badel.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "بادل تنس",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.55,
                                      ),
                                      Text(
                                        "فرديه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/bing.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "تنس طاوله",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.53,
                                      ),
                                      Text(
                                        "فرديه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/karatai.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "كاراتيه",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.62,
                                      ),
                                      Text(
                                        "فرديه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/swimming.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "سباحه",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.61,
                                      ),
                                      Text(
                                        "فرديه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/fitness.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "العاب قوى",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.55,
                                      ),
                                      Text(
                                        "فرديه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/boxing.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "ملاكمه",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.61,
                                      ),
                                      Text(
                                        "فرديه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/body.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "كمال اجسام",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.52,
                                      ),
                                      Text(
                                        "فرديه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/taikwondo.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "تايكوندو",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.59,
                                      ),
                                      Text(
                                        "فرديه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/speedBall.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "كره السرعه",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.54,
                                      ),
                                      Text(
                                        "فرديه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/squash.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "اسكواش",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.57,
                                      ),
                                      Text(
                                        "فرديه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/gola.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "دفع الجوله",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.55,
                                      ),
                                      Text(
                                        "فرديه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/rest.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "مصارعه ذراعين",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.48,
                                      ),
                                      Text(
                                        "فرديه",
                                        style: getBoldStyle(
                                            color: AppColors.primary,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
