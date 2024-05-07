import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_hub/config/routes/app_routs.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/presntation/view/screens/comptition_screen.dart';
import 'package:student_hub/presntation/view/screens/departments_screen.dart';
import 'package:student_hub/presntation/view/screens/drawer.dart';
import 'package:student_hub/presntation/view/screens/home_screen.dart';
import 'package:student_hub/presntation/view/screens/student_services.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int curentIndex = 0;
  int selectedIndex = 0;

  List<String> appBarTitle = [
    "StudentHub",
    "الاقسام",
    "رعاية الطلاب",
  ];
  List<Widget> screens = [
    const HomeScreen(),
    DepartmentsScreen(),
    StudentServScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: const DrawerWidget(),
        centerTitle: true,
        shadowColor: AppColors.black,
        elevation: 0.5,
        title: Text(
          appBarTitle[curentIndex],
          style: getBoldStyle(color: AppColors.black, fontSize: 20),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actions: [
          IconButton(
              onPressed: () {
                navigatTo(context, const ComptitionScreen());
              },
              icon: const Icon(EneftyIcons.cup_outline))
        ],
      ),
      body: screens[curentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.white,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: curentIndex,
          onTap: (value) {
            setState(() {
              curentIndex = value;
            });
          },
          elevation: 50,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(EneftyIcons.home_2_outline), label: "الرئيسية"),
            BottomNavigationBarItem(
                icon: Icon(EneftyIcons.category_2_outline), label: "الاقسام"),
            BottomNavigationBarItem(
                icon: Icon(EneftyIcons.magic_star_outline),
                label: "رعاية الطلاب"),
          ]),
    );
  }
}
