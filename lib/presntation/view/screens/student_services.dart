import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:student_hub/config/routes/app_routs.dart';
import 'package:student_hub/core/static/care_committees/art_committee.dart';
import 'package:student_hub/core/static/care_committees/cultural_committee.dart';
import 'package:student_hub/core/static/care_committees/scientifc_commitee.dart';
import 'package:student_hub/core/static/care_committees/social_committee.dart';
import 'package:student_hub/core/static/care_committees/solidarity_fund.dart';
import 'package:student_hub/core/static/care_committees/sports_committee.dart';
import 'package:student_hub/core/static/care_committees/student_families.dart';
import 'package:student_hub/core/static/care_committees/travelers_publicservice_committee.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/presntation/view/widgets/department_card.dart';

class StudentServScreen extends StatelessWidget {
  StudentServScreen({super.key});

  final List<Widget> committees = [
    const SportsCommiteeScreen(),
    const CulturalCommitteeScreen(),
    const ScientefcCommitteeScreen(),
    const SocialCommitteeScreen(),
    const ArtCommitteeScreen(),
    const TravelerPublicServiceCommitteeScreen(),
    const StudentFamiliesScreen(),
    const SolidarityFundScreen(),
  ];
  final List<String> headLine = [
    "اللجنة الرياضية",
    "اللجنة الثقافية",
    "اللجنه العلمية",
    "اللجنة الاجتماعية",
    "اللجنة الفنية",
    "لجنة الجوالة والخدمة العامة",
    "الاسر الطلابية",
    "صندوق التكافل",
  ];

  final List<String> image = [
    "assets/images/teenagers-basketball-field-together.jpg",
    "assets/images/stage.jpg",
    "assets/images/science_commitee.jpg",
    "assets/images/friend_commitee.jpg",
    "assets/images/art_commitee.jpg",
    "assets/images/camping.jpg",
    "assets/images/students.jpg",
    "assets/images/help_box.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(children: [
        AnimationLimiter(
          child: Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.all(15),
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: committees.length,
                separatorBuilder: (context, index) =>
                    SizedBox(height: context.height * 0.02),
                itemBuilder: (context, index) => buildDepartment(
                        context, headLine[index], "", index, image[index], () {
                      navigatTo(context, committees[index]);
                    })),
          ),
        ),
      ]),
    );
  }
}
