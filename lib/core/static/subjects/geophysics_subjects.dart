import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';

class Geophysics extends StatelessWidget {
  const Geophysics({super.key});

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
          "مقررات الجيوفيزياء",
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
                      title: Text("المستوي الاول",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
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
                              "تفاضل وتكامل 1 (ر111)",
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
                              "خواص الماده والحراره (ف101)",
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
                              "كيمياء عامة 2(ك102)",
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
                              "ميكانيكا 1(ر121)",
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
                              "الجيولوجيا الفيزيائية والتاريخية(ج101)",
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
                              "حقوق الانسان ومكافحه الفساد (ع101)",
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
                              "جبر وهندسه (ر112)",
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
                              "كهربيه ومغناطيسيه وضوء (ف102)",
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
                              "كيمياء عامه 1 (ك101)",
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
                              "ميكانيكا 2(ر122)",
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
                              "البلورات و المعادن(ج102)",
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
                              "مقدمه فى علم الحاسب (ع102)",
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
                      title: Text("المستوي الثاني",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
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
                              "مقدمة في الجيوفيزياء 1(جف201)",
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
                              "المعادن المكونة للصخور(ج205)",
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
                              "علم الصخور(ج207)",
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
                              "ترسیب و صخور رسوبية(ج209)",
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
                              "موجيات واهتزازات(ج211)",
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
                              "فيزياء ذرية(ف210)",
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
                              "تيار متردد ودوائر كهربية(ف228)",
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
                              "مصطلحات عمليه باللغه الانجليزيه(ع201)",
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
                              "طرق التنقيب الكهربية(جف204)",
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
                              "طرق التنقيب التثاقلية(جف206)",
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
                              "طرق التنقيب المغناطيسية(جف208)",
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
                              "جيولوجيا تركيبية(ج204)",
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
                              "طبقات عامة(ج206)",
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
                              "مقدمة في الجيوفيزياء 2(جف202)",
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
                              "رياضيات بحتة(ر213)",
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
                              "مواد ثقافيه (ع202_ع210)",
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
                      title: Text("المستوي الثالث",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
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
                              "طرق التنقيب السيزمية 1(جف303)",
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
                              "طرق التنقيب الحرارية(جف305)",
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
                              "طرق التنقيب الكهرومغناطيسية(جف307)",
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
                              "جيولوجيا تكتونية(ج307)",
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
                              "إحصاء جيولوجي(ج315)",
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
                              "تحليل عددي(ر301)",
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
                              "فيزياء الجوامد 1(ف311)",
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
                              "فيزياء المعادن(ف317)",
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
                              "طرق التنقيب السيزمية 2(جف204)",
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
                              "طرق التنقيب الاشعاعية(جف206)",
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
                              "جيولوجيا حقلية ومساحة(ج302)",
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
                              "الجيولوجيا الإقتصادية(ج308)",
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
                              "الجيولوجيا تحت السطحية(ج310)",
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
                              "جيولوجيا البترول(ج312)",
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
                              "مغناطيسية دقيقة(ف326)",
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
                              "جيولوجيا هندسية(ج314)",
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
                              "جيولوجيا بحرية(ج316)",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 14),
                            ),
                          ],
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
                      title: Text("المستوي الرابع",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 15)),
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
                              "تسجيلات آبار(جف401)",
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
                              "زلازل وزلزالية هندسية(جف403)",
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
                              "جيولوجيا المياه وشكل الأرض في مصر(ج401)",
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
                              "جيولوجيا الدلتا(ج403)",
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
                              "جيولوجيا الطبقات في مصر(ج409)",
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
                              "مغناطيسية قديمة(جف405)",
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
                              "إستشعار عن بعد ونظم معلومات جغرافية(ج413)",
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
                              "مشروع بحث ومقال(ج400)",
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
                              "بتروفيزياء الخزانات(جف402)",
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
                              "تدريبات جيوفيزيائية وجيولوجيه حقلية(جف404)",
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
                              "الأحواض الرسوبية(ج406)",
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
                              "جيولوجيا البترول في مصر(ج410)",
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
                              "جيوفيزياء بينية و جيولوجيا الآثار(جف406)",
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
                              "تحليل بيانات جيوفيزيائية(جف408)",
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
