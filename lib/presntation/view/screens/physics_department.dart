import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/config/routes/app_routs.dart';
import 'package:student_hub/core/static/subjects/phy.dart';
import 'package:student_hub/core/static/subjects/phy_che.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';

class PhysicsDepartment extends StatelessWidget {
  const PhysicsDepartment({super.key});

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
          "الفيزياء",
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
                          navigatTo(context, const Physcis());
                        },
                        child: SizedBox(
                          width: context.width * 0.9,
                          child: Card(
                              clipBehavior: Clip.hardEdge,
                              elevation: 5,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/phy.jpg",
                                    height: context.height * 0.4,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "فيزياء",
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
                          navigatTo(context, const PhyandChe());
                        },
                        child: SizedBox(
                          width: context.width * 0.9,
                          child: Card(
                              clipBehavior: Clip.hardEdge,
                              elevation: 5,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/phy & che.jpg",
                                    height: context.height * 0.4,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "كيمياء وفيزياء",
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
                                  "assets/images/sci_physic.jpg",
                                  height: context.height * 0.4,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "فيزياء طبيه",
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
                      title: Text("الفيزياء",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
                      leading: Icon(
                        Icons.satellite_alt_rounded,
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
                              "العمل في المصانع الوطنية مثل:الحديد والصلب",
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
                              " العمل بالجامعات في المجال الأكاديمي أو المجال الفني",
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
                              "العمل في مراكز البحوث العلمية ومختبرات النوعية",
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
                              "العمل في  محطات  تحلية المياه والطاقةالذرية",
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
                              " التدريس في المدارس الحكومية",
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
                      title: Text("الكيمياء والفيزياء",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
                      leading: Icon(
                        Icons.workspaces_outline,
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
                              "العمل في شركات الصناعات الدوائيه",
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
                              "العمل في مختبرات وزارة الصحة والمستشفيات",
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
                              "العمل في مصانع الأدوية والعقاقير",
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
                              "العمل في محطات تحلية المياه ومصلحة الأرصاد ",
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
                              "التدريس في مراحل التعليم المختلفة",
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
                      title: Text("الفيزياء الطبيه",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
                      leading: Icon(
                        Icons.medical_information_sharp,
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
                              "العمل في مجالات ضبط الجودة والمعايرة في المصانع",
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
                              "العمل في  جميع المستشفيات والمراكز الصحية",
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
                              "العمل في ضمن مشاريع استخراج اليورانيوم وتخصيبه",
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
                              "العمل في مجالات متنوّعة في المفاعلات الذرية والنووية",
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
