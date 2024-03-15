import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:student_hub/config/routes/app_routs.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/presntation/view/screens/animal_department.dart';
import 'package:student_hub/presntation/view/screens/chimestry_department.dart';
import 'package:student_hub/presntation/view/screens/geology_department.dart';
import 'package:student_hub/presntation/view/screens/math_department.dart';
import 'package:student_hub/presntation/view/screens/physics_department.dart';
import 'package:student_hub/presntation/view/screens/plant_department.dart';
import 'package:student_hub/presntation/view/widgets/department_card.dart';

// ignore: must_be_immutable
class DepartmentsScreen extends StatelessWidget {
  DepartmentsScreen({super.key});
  List<Widget> departments = [
    const MathDepartment(),
    const ChimestryDepartment(),
    const AnimalDepartment(),
    const PlantDepartment(),
    const GeologyDepartment(),
    const PhysicsDepartment(),
  ];
  List<String> headLine = [
    "الرياضيات",
    "الكمياء",
    "الحيوان",
    "النبات",
    "الجيولوجيا",
    "الفزياء"
  ];
  List<String> subTitle = [
    "دراسة الحساب والمعلومات والأتمتة. تمتد علوم الكمبيوتر إلى التخصصات النظرية (مثل الخوارزميات ونظرية الحساب",
    "قسم الكيمياء هو أحد الأقسام المرموقة في كلية العلوم، جامعة المنصورة. وقد أنشئ عام 1969 بهدف مساعدة الطلاب وتطوير فهمهم للكيمياء والتقنيات الحديثة وإعدادهم وتأهيلهم علميا وتقنيا حتى يتمكنوا من خدمة الوطن ومن التنافس في سوق العمل المحلي والاقليمي.",
    "يمثل قسم علم الحيوان أحد الأقسام الرئيسية بكلية العلوم ويهدف إلي إعداد أجيال من الدارسين والباحثين في مجالات علم الحيوان المختلفة والتي تتطلبها سوق العمل كما يقوم القسم بدور هام وفعال في تنمية المجتمع المدني",
    "أنشئ قسـم النبـات مع بدء كلية العلوم عام 1969- م ليضم الآن قرب نهاية عام 2020- م ما يصل إلى 97 من أعضاء هيئة التدريس ومعاونيهم (60 عضو هيئة تدريس و 37 عضو هيئة معاونة)",
    "بدأت الدراسة في قسم الجيولوجيا في 1969 كفرع من جامعة القاهرة، ثم كجزء من كلية العلوم جامعة المنصورة عام    1973. تتنوع المجالات العلمية والبحثية في قسم الجيولوجيا وتشمل جيولوجيا البترول والمياه؛ الرسوبيات والصخور الرسوبية؛ علم الطبقات و الحفريات؛ المعادن ورواسب الخامات؛ الجيوفيزياء التطبيقية والجيولوجيا البيئية.",
    "تأسس قسم الفيزياء عام 1969 بكلية العلوم تحت إشراف جامعة القاهرة. في عام 1972 تأسست جامعة المنصورة وبدأ القسم في التطور لمواكبة كل التطورات في تعليم الفيزياء.",
  ];
  List<String> image = [
    "assets/images/computer.png",
    "assets/images/chimstry.png",
    "assets/images/animalScience.png",
    "assets/images/enviroment science.jpg",
    "assets/images/gelogy.png",
    "assets/images/feziaa.png",
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
                itemCount: departments.length,
                separatorBuilder: (context, index) =>
                    SizedBox(height: context.height * 0.02),
                itemBuilder: (context, index) => buildDepartment(
                        context,
                        headLine[index],
                        subTitle[index],
                        index,
                        image[index], () {
                      navigatTo(context, departments[index]);
                    })),
          ),
        ),
      ]),
    );
  }
}
