import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:student_hub/config/routes/app_routs.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/presntation/view/screens/about_us.dart';
import 'package:student_hub/presntation/view/screens/courses_screen.dart';
import 'package:student_hub/presntation/view/screens/locations_screen.dart';
import 'package:student_hub/presntation/view/screens/login_screen.dart';
import 'package:student_hub/presntation/view/screens/main_screen.dart';

class DrawerZoom extends StatefulWidget {
  const DrawerZoom({super.key});

  @override
  State<DrawerZoom> createState() => HomeState();
}

class HomeState extends State<DrawerZoom> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: const DrawerScreen(),
      mainScreen: const MainScreen(),
      borderRadius: 30,
      showShadow: true,
      angle: 0.0,
      slideWidth: context.width * 0.6,
      menuBackgroundColor: AppColors.primary,
    );
  }
}

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({
    super.key,
  });

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          drawerList(EneftyIcons.location_outline, "المعامل و المدرجات", () {
            navigatTo(context, const LocationsScreen());
          }),
          drawerList(EneftyIcons.book_outline, "كورسات", () {
            navigatTo(context, const CoursesScreen());
          }),
          drawerList(EneftyIcons.headphone_outline, "تواصل معنا", () {
            navigatTo(context, const AboutUs());
          }),
          drawerList(EneftyIcons.logout_outline, "تسجيل خروج", () {
            navigateAndFinish(context, const LoginScreen());
          }),
        ],
      ),
    );
  }

  Widget drawerList(IconData icon, String text, VoidCallback fun) {
    return InkWell(
      onTap: fun,
      child: Container(
        margin: const EdgeInsets.only(left: 20, bottom: 12),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ZoomDrawer.of(context)!.toggle();
      },
      icon: const Icon(EneftyIcons.menu_outline),
    );
  }
}
