import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';

class SolidarityFundScreen extends StatelessWidget {
  const SolidarityFundScreen({super.key});

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
            "صندوق التكافل ",
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
                    "صندوق التكافل",
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
                    """
تهدف صناديق التكافل الاجتماعي لطلاب الجامعات إلي :
أ‌- تحقيق الضمان الاجتماعي للطلاب بصورة المختلفة من تأمين أو رعاية اجتماعية
ب‌- المساهمة في تنفيذ الخدمات للطلاب .
جـ - العمل علي حل المشاكل التي تواجه الطلاب وتحول
بينهم وبين الاستمرار الهادئ في دراستهم بسبب عجز
دخولهم المالية .
* وينشأ بالمجلس الأعلى للجامعات صندوق مركزي للتكافل الاجتماعي لطلاب الجامعات تكون له الشخصية الاعتبارية المستقلة . ويكون له مجلس إدارة يشكل برئاسة رئيس المجلس الأعلى للجامعات وعضوية كل من :
1- نواب رؤساء الجامعات لشئون التعليم والطلاب
2- أمين المجلس الأعلى للجامعات
3- عدد لا يتجاوز تسعة أعضاء من ممثلي الهيئات التي يرتبط عملها بأهداف الصندوق والخبراء اللازمين لحسن سير عمله يصدر قرار بتعيينهم قرار من رئيس المجلس الأعلى للجامعات لمدة سنتين.
- وينشأ في كل جامعة من الجامعات الخاضعة لقانون تنظيم الجامعات صندوق فرعى
للتكافل الاجتماعي للجامعة . ويشكل مجلس إدارته برئاسة نائب رئيس الجامعة لشئون
التعليم والطلاب وعضوية اثنين من عمداء الكليات ورئيس الجهاز الفني لرعاية الشباب
بالجامعة ويكون أمينا للصندوق .
""",
                    style: getBoldStyle(color: AppColors.grey, fontSize: 15),
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
