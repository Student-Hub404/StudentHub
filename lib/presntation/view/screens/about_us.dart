import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/presntation/view/widgets/main_button.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  double height = 50;
  TextEditingController feedbackController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            top: context.height * 0.05,
            left: context.width * 0.02,
            right: context.width * 0.02,
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        height: context.height * 0.4,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "assets/images/aboutUs.jpg",
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                      right: context.width * 0.12,
                      left: context.width * 0.12,
                      top: context.height * 0.25,
                      child: Container(
                        height: context.height * 0.12,
                        width: context.width * 0.7,
                        decoration: BoxDecoration(
                            color: AppColors.white.withOpacity(0.45),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "نحن فريق تقني بكلية العلوم جامعة المنصورة. لقد أنشأنا تطبيقًا لمساعدة الطلاب الجدد على التكيف مع الحياة الجامعية",
                            style: getBoldStyle(
                                color: AppColors.black, fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.white.withOpacity(0.4),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  EneftyIcons.arrow_left_3_outline,
                                  color: AppColors.black,
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: context.height * 0.025,
                ),
                Material(
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.hardEdge,
                  elevation: 10,
                  child: Container(
                      height: context.height * 0.2,
                      width: context.width * 0.8,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.home,
                                  color: AppColors.primary,
                                ),
                                Text(
                                  " Glitch Hunter",
                                  style: getMediumStyle(
                                      color: AppColors.black, fontSize: 17),
                                )
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.02,
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.mail,
                                  color: AppColors.primary,
                                ),
                                Text(
                                  " Glitch@info.com",
                                  style: getMediumStyle(
                                      color: AppColors.black, fontSize: 17),
                                )
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.02,
                            ),
                            Row(
                              children: [
                                Icon(
                                  EneftyIcons.location_outline,
                                  color: AppColors.primary,
                                ),
                                Text(
                                  " Mansoura,Daqahlia,Egypt",
                                  style: getMediumStyle(
                                      color: AppColors.black, fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: context.height * 0.1,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      height = context.height * 0.479;
                    });
                  },
                  child: Material(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(20),
                    elevation: 10,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      height: height,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Text(
                                "اترك لنا تعليق",
                                style: getBoldStyle(
                                    color: AppColors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: context.height * 0.03,
                              ),
                              Material(
                                clipBehavior: Clip.hardEdge,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 5.0,
                                child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  height: context.height * 0.3,
                                  width: context.width * 0.9,
                                  child: TextField(
                                    maxLines: null,
                                    expands: true,
                                    keyboardType: TextInputType.text,
                                    controller: feedbackController,
                                    cursorColor: AppColors.black,
                                    style: getMediumStyle(
                                        color: AppColors.black, fontSize: 17),
                                    decoration: InputDecoration(
                                        hintStyle: getMediumStyle(
                                            color: AppColors.grey,
                                            fontSize: 17),
                                        hintText: "تعليقك",
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        errorBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                        border: const OutlineInputBorder()),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: context.height * 0.04,
                              ),
                              mainButton(context,
                                  width: double.infinity,
                                  onpressd: () {},
                                  background: AppColors.primary,
                                  text: "ادخال")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.02,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
