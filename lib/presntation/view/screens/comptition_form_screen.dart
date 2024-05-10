import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/presntation/manager/cubit/competitions_cubit.dart';
import 'package:student_hub/presntation/manager/states/competitions_state.dart';
import 'package:student_hub/presntation/view/widgets/input_field.dart';
import 'package:student_hub/presntation/view/widgets/main_button.dart';

class ComptitionFormScreen extends StatefulWidget {
  const ComptitionFormScreen({
    super.key,
    required this.comptitionId,
  });

  final String comptitionId;

  @override
  State<ComptitionFormScreen> createState() => _ComptitionFormScreenState();
}

class _ComptitionFormScreenState extends State<ComptitionFormScreen> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController levelController = TextEditingController();

  final TextEditingController departmentController = TextEditingController();

  final TextEditingController collageIdController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CompetitionsCubit, CompetitionsStates>(
      listener: (context, state) {
        if (state is CompetitionsSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            "تم التسجيل بنجاح",
            style: getMediumStyle(color: AppColors.white, fontSize: 15),
          )));
        } else if (state is CompetitionsErrState) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            "البيانات غير صالحة",
            style: getMediumStyle(color: AppColors.white, fontSize: 15),
          )));
        }
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
              "التسجيل",
              style: getBoldStyle(color: AppColors.black, fontSize: 20),
            ),
            centerTitle: true,
          ),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Text(
                          "قم بتسجيل بياناتك للاشتراك في النشاط",
                          style: getBoldStyle(
                              color: AppColors.black, fontSize: 20),
                        ),
                        SizedBox(
                          height: context.height * 0.04,
                        ),
                        defualtFormField(context, controller: nameController,
                            validate: (String value) {
                          if (value.isEmpty) {
                            return "يجب ادخال الاسم";
                          }
                        },
                            hint: "الاسم ثلاثي",
                            type: TextInputType.name,
                            width: double.infinity),
                        SizedBox(
                          height: context.height * 0.03,
                        ),
                        defualtFormField(context,
                            controller: departmentController,
                            validate: (String value) {
                          if (value.isEmpty) {
                            return "يجب ادخال الفسم";
                          }
                        },
                            hint: "القسم",
                            type: TextInputType.text,
                            width: double.infinity),
                        SizedBox(
                          height: context.height * 0.03,
                        ),
                        defualtFormField(context, controller: phoneController,
                            validate: (String value) {
                          if (value.length != 11) {
                            return "رقم الهاتف غير صحيح";
                          }
                        },
                            hint: "رقم الهاتف",
                            type: TextInputType.number,
                            width: double.infinity),
                        SizedBox(
                          height: context.height * 0.03,
                        ),
                        defualtFormField(context, controller: levelController,
                            validate: (String value) {
                          if (value.length != 1) {
                            return "المستوى غير صحيح";
                          }
                        },
                            hint: "المستوي الاكاديمي",
                            type: TextInputType.number,
                            width: double.infinity),
                        SizedBox(
                          height: context.height * 0.03,
                        ),
                        defualtFormField(context,
                            controller: collageIdController,
                            validate: (String value) {
                          if (value.length != 8) {
                            return "الكود الكاديمي غير صحيح";
                          }
                        },
                            hint: "الكود الجامعي",
                            type: TextInputType.number,
                            width: double.infinity),
                        SizedBox(
                          height: context.height * 0.1,
                        ),
                        BlocBuilder<CompetitionsCubit, CompetitionsStates>(
                          builder: (context, state) {
                            if (state is CompetitionsLoadingState) {
                              return CircularProgressIndicator(
                                color: AppColors.primary,
                              );
                            } else {
                              return mainButton(context, onpressd: () {
                                if (formKey.currentState!.validate()) {
                                  CompetitionsCubit.get(context)
                                      .comptitionsSign(
                                          phone: phoneController.text,
                                          name: nameController.text,
                                          collegeId: collageIdController.text,
                                          department: departmentController.text,
                                          level: levelController.text,
                                          competitionId: widget.comptitionId);
                                  setState(() {
                                    phoneController.text = "";
                                    nameController.text = "";
                                    collageIdController.text = "";
                                    departmentController.text = "";
                                    levelController.text = "";
                                  });
                                }
                              },
                                  background: AppColors.primary,
                                  text: "تسجيل",
                                  width: context.width * 0.7);
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
