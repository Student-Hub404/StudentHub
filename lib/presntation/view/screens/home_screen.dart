import 'package:carousel_slider/carousel_slider.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/app_strings.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Widget> sliderImages = [
    Image.asset(
      "assets/images/libHome.png",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/2008.i605.026..family active holidays design concept.jpg",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/school-supplies-purple-background.jpg",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/teenagers-basketball-field-together.jpg",
      fit: BoxFit.cover,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            SizedBox(
              height: context.height * 0.35,
              width: double.infinity,
              child: CarouselSlider(
                  items: sliderImages,
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
            SizedBox(
              height: context.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    AppStrings.homeMsg,
                    style: getBoldStyle(color: AppColors.black, fontSize: 20),
                  ),
                  SizedBox(
                    height: context.height * 0.001,
                  ),
                  Container(
                    height: 1,
                    width: context.width * 0.4,
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    height: context.height * 0.01,
                  ),
                  Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Image.asset("assets/images/ches.png"),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              "Computer science focuses on the development and testing of software and software systems. "),
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      EneftyIcons.message_outline,
                                      color: AppColors.primary,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "تعليق",
                                      style: getMediumStyle(
                                          color: AppColors.primary),
                                    )
                                  ],
                                )),
                            SizedBox(
                              width: context.width * 0.17,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: context.width * 0.3,
                                height: context.height * 0.04,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.primary,
                                ),
                                child: Center(
                                  child: Text(
                                    "تقديم طلب",
                                    style: getBoldStyle(color: AppColors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
