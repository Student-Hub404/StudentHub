import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/presntation/view/widgets/input_field.dart';

class ComptitionFormScreen extends StatelessWidget {
  ComptitionFormScreen({super.key, required this.id});

  final String id;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController levelController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController collageIdController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

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
          "التسجيل",
          style: getBoldStyle(color: AppColors.black, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "قم بتسجيل بياناتك للاشتراك في النشاط",
                style: getBoldStyle(color: AppColors.black, fontSize: 20),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              defualtFormField(context,
                  controller: nameController,
                  validate: () {},
                  hint: "hint",
                  type: TextInputType.name,
                  width: double.infinity)
            ],
          ),
        ),
      ),
    );
  }
}
