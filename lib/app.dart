import 'package:flutter/material.dart';
import 'package:student_hub/config/theme/app_theme.dart';
import 'package:student_hub/presntation/view/screens/drawer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      home: const DrawerZoom(),
    );
  }
}
