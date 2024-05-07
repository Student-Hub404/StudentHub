import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/app_strings.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/presntation/manager/cubit/posts_cubit.dart';
import 'package:student_hub/presntation/manager/states/posts_state.dart';
import 'package:student_hub/presntation/view/widgets/posts_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostsCubit, PostsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                        autoPlayAnimationDuration: const Duration(seconds: 2),
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
                        style:
                            getBoldStyle(color: AppColors.black, fontSize: 20),
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
                    ],
                  ),
                ),
                BlocBuilder<PostsCubit, PostsStates>(
                  builder: (context, state) {
                    if (state is PostsLoadingState) {
                      return CircularProgressIndicator(
                        color: AppColors.primary,
                      );
                    } else if (state is PostsSuccessState) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => buildPostCard(
                                  context,
                                  context.read<PostsCubit>().posts[index], () {
                                setState(() {
                                  isLike = !isLike;
                                });
                              }, isLike ? AppColors.primary : AppColors.black),
                          itemCount: PostsCubit.get(context).posts.length);
                    } else {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Image.asset(
                            "assets/images/server cnect.png",
                            height: context.height * 0.25,
                          )),
                          SizedBox(
                            height: context.height * 0.03,
                          ),
                          Text(
                            "لا يتوفر اتصال بالانترنت",
                            style: getBoldStyle(
                                color: AppColors.black, fontSize: 25),
                          )
                        ],
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ));
      },
    );
  }
}
