import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/config/routes/app_routs.dart';
import 'package:student_hub/core/static/subjects/geology_subjects.dart';
import 'package:student_hub/core/static/subjects/geophysics_subjects.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';

class GeologyDepartment extends StatelessWidget {
  const GeologyDepartment({super.key});

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
          "الجيولوجيا",
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
                  "البرامج",
                  style: getBoldStyle(color: AppColors.black, fontSize: 15),
                ),
                Container(
                  width: context.width * 0.25,
                  height: 1,
                  color: AppColors.primary,
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          navigatTo(context, const Geophysics());
                        },
                        child: SizedBox(
                          width: context.width * 0.9,
                          child: Card(
                              clipBehavior: Clip.hardEdge,
                              elevation: 5,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/geophysic.jpg",
                                    height: context.height * 0.4,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "جيوفيزياء",
                                          style: getMediumStyle(
                                              color: AppColors.black,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: context.width * 0.17,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          navigatTo(context, const Geology());
                        },
                        child: SizedBox(
                          width: context.width * 0.9,
                          child: Card(
                              clipBehavior: Clip.hardEdge,
                              elevation: 5,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/geology.jpg",
                                    height: context.height * 0.4,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "جيولوجيا",
                                          style: getMediumStyle(
                                              color: AppColors.black,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: context.width * 0.17,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/Petroleum & Mining .jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "بترول وتعدين",
                                        style: getMediumStyle(
                                            color: AppColors.black,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: context.width * 0.35,
                                      ),
                                      Text(
                                        "برنامج نوعي",
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
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Text(
                  "مجالات سوق العمل لخريجي القسم :",
                  style: getMediumStyle(color: AppColors.primary, fontSize: 13),
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.white),
                  ),
                  child: ExpansionTile(
                      childrenPadding: const EdgeInsets.all(5),
                      shape: Border.all(color: AppColors.white),
                      backgroundColor: AppColors.lightGrey,
                      clipBehavior: Clip.hardEdge,
                      iconColor: AppColors.black,
                      collapsedIconColor: AppColors.black,
                      title: Text("الجيوفيزياء",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
                      leading: Icon(
                        Icons.animation_sharp,
                        color: AppColors.primary,
                      ),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في مراكز البحوث",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في الهيئة العامة للثروة المعدنية",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في شركات المياه الجوفية",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في هيئة الاستشعار عن بعد",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في شركات الملح والمتبخرات",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                      ]),
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.white),
                  ),
                  child: ExpansionTile(
                      childrenPadding: const EdgeInsets.all(5),
                      shape: Border.all(color: AppColors.white),
                      backgroundColor: AppColors.lightGrey,
                      clipBehavior: Clip.hardEdge,
                      iconColor: AppColors.black,
                      collapsedIconColor: AppColors.black,
                      title: Text("الجيولوجيا",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
                      leading: Icon(
                        Icons.area_chart_sharp,
                        color: AppColors.primary,
                      ),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في هيئة المساحة الجيولوجية",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في المراصد الفلكية (مثل مرصد حلوان)",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في معهد بحوث الصحراء",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في مجال الجيولوجيا الهندسية خاصة خارج مصر",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في قطاع الآثار والمناجم",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                      ]),
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.white),
                  ),
                  child: ExpansionTile(
                      childrenPadding: const EdgeInsets.all(5),
                      shape: Border.all(color: AppColors.white),
                      backgroundColor: AppColors.lightGrey,
                      clipBehavior: Clip.hardEdge,
                      iconColor: AppColors.black,
                      collapsedIconColor: AppColors.black,
                      title: Text("بترول وتعدين",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
                      leading: Icon(
                        Icons.oil_barrel_rounded,
                        color: AppColors.primary,
                      ),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في شركات البترول و الغازات الطبيعية",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في شركات التعدين الخاصة وقطاع الأعمال",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في شركات الخدمات والإمدادات البترولية",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في هيئة المواد النووية",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.black,
                              radius: 5,
                            ),
                            SizedBox(
                              width: context.width * 0.01,
                            ),
                            Text(
                              "العمل في شركات البحث والتنقيب عن المعادن",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
