import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/config/routes/app_routs.dart';
import 'package:student_hub/core/static/subjects/chem_adlh.dart';
import 'package:student_hub/core/static/subjects/chemstry.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';

class ChimestryDepartment extends StatelessWidget {
  const ChimestryDepartment({super.key});

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
          "الكمياء",
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
                          navigatTo(context, const Chemstry());
                        },
                        child: SizedBox(
                          width: context.width * 0.9,
                          child: Card(
                              clipBehavior: Clip.hardEdge,
                              elevation: 5,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/chimstry.png",
                                    height: context.height * 0.4,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "الكيمياء",
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
                                  "assets/images/petrochimecals.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "بيتروكيماويات",
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
                      SizedBox(
                        width: context.width * 0.9,
                        child: Card(
                            clipBehavior: Clip.hardEdge,
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/bioChimestry.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "الكيمياء الحيوية",
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
                      InkWell(
                        onTap: () {
                          navigatTo(context, const ChemstrAndAdela());
                        },
                        child: SizedBox(
                          width: context.width * 0.9,
                          child: Card(
                              clipBehavior: Clip.hardEdge,
                              elevation: 5,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/police.jpg",
                                    height: context.height * 0.4,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "كيمياء وأدله جنائيه",
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
                      title: Text("الكيمياء",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
                      leading: Icon(
                        Icons.science,
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
                              "العمل في المراكز البحثية",
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
                              "العمل في مصانع الزيت و الصابون",
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
                              "العمل في مصانع المطاط و البلاستيك",
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
                              "العمل في الشركات الادوية",
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
                              "العمل في شركات الاسمده",
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
                      title: Text("بيتروكيماويات",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
                      leading: Icon(
                        Icons.timeline_sharp,
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
                              "العمل في شركات البتروكيماويات",
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
                              "العمل في شاريكات انتاج الطاقة",
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
                              "العمل في مجال بحوث البترول و مشتقاته",
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
                              "العمل في شركات الاستشارات البترولية",
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
                      title: Text("الكمياء الحيوية",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
                      leading: Icon(
                        Icons.vaccines,
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
                              "العمل في المراكز البحثية",
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
                              "العمل في المستشفايات و المراكز الطبية",
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
                              "العمل في شركات الادوية",
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
                              "العمل في مجالات التحاليل الطبة و البيولوجية",
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
                      title: Text("كيمياء وأدله جنائيه",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
                      leading: Icon(
                        Icons.search,
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
                              "أمن المعلومات، محقق الطب الشرعي الرقمي",
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
                              "المتخصصين في بصمات الأصابع",
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
                              "عالم الأحياء الشرعي، أخصائي علوم الطب الشرعي",
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
                              "عالم أنثروبولوجيا شرعي، محقق جنائي",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
