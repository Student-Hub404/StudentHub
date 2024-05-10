import 'dart:developer';

import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_hub/config/routes/app_routs.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/presntation/manager/cubit/auth_cubit.dart';
import 'package:student_hub/presntation/manager/states/auth_states.dart';
import 'package:student_hub/presntation/view/screens/drawer.dart';
import 'package:student_hub/presntation/view/screens/login_screen.dart';
import 'package:student_hub/presntation/view/widgets/input_field.dart';
import 'package:student_hub/presntation/view/widgets/main_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  bool isPassword = true;
  var formKey = GlobalKey<FormState>();
  List levels = ["الاول", "الثاني", "الثالث", "الرابع"];
  List departments = ["كمياء", "فزياء", "حاسب", "رياضيات"];

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
    nameController.dispose();
    confirmPassController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        log("$state");
        if (state is AuthSuccessStates) {
          navigateAndFinish(context, const DrawerZoom());
        } else if (state is AuthErrStates) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            "البيانات غير صالحة",
            style: getMediumStyle(color: AppColors.white, fontSize: 15),
          )));
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.white,
          appBar: AppBar(
            backgroundColor: AppColors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  EneftyIcons.arrow_left_3_outline,
                  color: AppColors.black,
                )),
            elevation: 0.0,
            title: Text(
              "",
              style: getBoldStyle(color: AppColors.primary, fontSize: 25),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.only(
                    right: context.width * 0.05,
                    left: context.width * 0.05,
                    top: context.height * 0.01),
                child: Form(
                  key: formKey,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hub",
                              style: getBoldStyle(
                                  color: AppColors.primary, fontSize: 30),
                            ),
                            Text(
                              "Student",
                              style: getBoldStyle(
                                  color: AppColors.black, fontSize: 30),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.height * 0.1,
                        ),
                        defualtFormField(context, controller: nameController,
                            validate: (String value) {
                          if (value.isEmpty) {
                            return "قم بأدخال الاسم كاملا";
                          }
                        },
                            hint: "الاسم ثلاثي",
                            type: TextInputType.name,
                            width: double.infinity,
                            suffix: Icon(
                              EneftyIcons.user_outline,
                              color: AppColors.primary,
                            )),
                        SizedBox(
                          height: context.height * 0.03,
                        ),
                        defualtFormField(context, controller: emailController,
                            validate: (String value) {
                          if (value.isEmpty) {
                            return "قم بأدخال البريد الالكتروني";
                          }
                          return null;
                        },
                            hint: "ُالبريد الالكتروني",
                            type: TextInputType.emailAddress,
                            width: double.infinity,
                            suffix: Icon(
                              CupertinoIcons.mail,
                              color: AppColors.primary,
                            )),
                        SizedBox(
                          height: context.height * 0.03,
                        ),
                        defualtFormField(context, controller: passController,
                            validate: (String value) {
                          if (value.isEmpty) {
                            return "قم بأدخال كلمة السر";
                          }
                          return null;
                        },
                            hint: "ُكلمة السر",
                            type: TextInputType.text,
                            width: double.infinity,
                            isPassword: isPassword,
                            suffix: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPassword = !isPassword;
                                  });
                                },
                                icon: Icon(
                                  isPassword
                                      ? EneftyIcons.eye_outline
                                      : EneftyIcons.eye_slash_outline,
                                  color: AppColors.primary,
                                ))),
                        SizedBox(
                          height: context.height * 0.03,
                        ),
                        defualtFormField(context,
                            controller: confirmPassController,
                            validate: (String value) {
                          if (value.isEmpty) {
                            return "قم بتأكيد كلمة السر";
                          }
                        },
                            hint: "تأكيد كلمة السر",
                            type: TextInputType.text,
                            width: double.infinity,
                            isPassword: isPassword,
                            suffix: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPassword = !isPassword;
                                  });
                                },
                                icon: Icon(
                                  isPassword
                                      ? EneftyIcons.eye_outline
                                      : EneftyIcons.eye_slash_outline,
                                  color: AppColors.primary,
                                ))),
                        SizedBox(
                          height: context.height * 0.05,
                        ),
                        BlocBuilder<AuthCubit, AuthStates>(
                          builder: (context, state) {
                            if (state is AuthLoadingStates) {
                              return CircularProgressIndicator(
                                color: AppColors.primary,
                              );
                            }
                            return mainButton(context, width: double.infinity,
                                onpressd: () {
                              if (formKey.currentState!.validate()) {
                                AuthCubit.get(context).createUser(
                                    email: emailController.text,
                                    name: nameController.text,
                                    password: passController.text,
                                    confirmPass: confirmPassController.text);
                              }
                            }, background: AppColors.primary, text: "انشاء");
                          },
                        ),
                        SizedBox(
                          height: context.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "لديك حساب بالفعل",
                              style: getMediumStyle(
                                  color: AppColors.black, fontSize: 17),
                            ),
                            TextButton(
                              onPressed: () {
                                navigateAndFinish(
                                  context,
                                  const LoginScreen(),
                                );
                              },
                              child: Text(
                                "تسجيل دخول",
                                style: getBoldStyle(
                                    color: AppColors.primary, fontSize: 17),
                              ),
                            )
                          ],
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
