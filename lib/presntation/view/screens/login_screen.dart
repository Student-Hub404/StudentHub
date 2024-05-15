import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_hub/config/routes/app_routs.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/app_strings.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/presntation/manager/cubit/auth_cubit.dart';
import 'package:student_hub/presntation/manager/states/auth_states.dart';
import 'package:student_hub/presntation/view/screens/drawer.dart';
import 'package:student_hub/presntation/view/screens/register.dart';
import 'package:student_hub/presntation/view/widgets/input_field.dart';
import 'package:student_hub/presntation/view/widgets/main_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  bool isPassword = true;
  var formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthStates>(
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
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          elevation: 0.0,
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hub",
                            style: getBoldStyle(
                                color: AppColors.primary, fontSize: 40),
                          ),
                          Text(
                            "Student",
                            style: getBoldStyle(
                                color: AppColors.black, fontSize: 30),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.height * 0.03,
                      ),
                      Center(
                        child: SizedBox(
                          width: context.width * 0.5,
                          child: DefaultTextStyle(
                            style: getMediumStyle(
                                color: AppColors.grey, fontSize: 17),
                            child: AnimatedTextKit(
                              totalRepeatCount: 1,
                              animatedTexts: [
                                TypewriterAnimatedText(AppStrings.loginMsg),
                              ],
                              onTap: () {},
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.height * 0.1,
                      ),
                      defualtFormField(context, controller: emailController,
                          validate: (String value) {
                        if (value.contains("@")) {
                          return null;
                        }
                        return "البريد الالكتروني غير صالح";
                      },
                          hint: "البريد الاكتروني",
                          type: TextInputType.emailAddress,
                          width: double.infinity,
                          suffix: Icon(
                            CupertinoIcons.mail,
                            color: AppColors.primary,
                          )),
                      SizedBox(
                        height: context.height * 0.05,
                      ),
                      defualtFormField(context, controller: passController,
                          validate: (String value) {
                        if (value.length < 8) {
                          return "كلمة السر غير صحيحه";
                        }
                      },
                          hint: "كلمة السر",
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
                        height: context.height * 0.1,
                      ),
                      BlocBuilder<AuthCubit, AuthStates>(
                        builder: (context, state) {
                          if (state is AuthLoadingStates) {
                            return CircularProgressIndicator(
                              color: AppColors.primary,
                            );
                          }
                          return mainButton(width: double.infinity, context,
                              onpressd: () {
                            if (formKey.currentState!.validate()) {
                              AuthCubit.get(context).userLogin(
                                  email: emailController.text,
                                  password: passController.text);
                            }
                          }, background: AppColors.primary, text: "تسجيل دخول");
                        },
                      ),
                      SizedBox(
                        height: context.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ليس لديك حساب ؟",
                            style: getLightStyle(
                                color: AppColors.black, fontSize: 17),
                          ),
                          TextButton(
                            onPressed: () {
                              navigatTo(context, const RegisterScreen());
                            },
                            child: Text(
                              "انشاء حساب",
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
      ),
    );
  }
}
