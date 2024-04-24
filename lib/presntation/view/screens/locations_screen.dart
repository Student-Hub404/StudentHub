import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/config/routes/app_routs.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/presntation/view/screens/labs_screen.dart';
import 'package:student_hub/presntation/view/screens/terraces_screen.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({super.key});

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
          "الأماكن",
          style: getBoldStyle(color: AppColors.black, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                navigatTo(context, const TerracesScreen());
              },
              child: SizedBox(
                height: context.height * 0.388,
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/hall.jpg",
                        height: context.height * 0.32,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "المدرجات",
                          style: getBoldStyle(
                              color: AppColors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            InkWell(
              onTap: () {
                navigatTo(context, const LabsScreen());
              },
              child: SizedBox(
                height: context.height * 0.388,
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/lab.jpg",
                        height: context.height * 0.32,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "المعامل",
                          style: getBoldStyle(
                              color: AppColors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
