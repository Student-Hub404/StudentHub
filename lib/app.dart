import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_hub/config/theme/app_theme.dart';
import 'package:student_hub/presntation/manager/cubit/auth_cubit.dart';
import 'package:student_hub/presntation/manager/cubit/competitions_cubit.dart';
import 'package:student_hub/presntation/manager/cubit/posts_cubit.dart';
import 'package:student_hub/presntation/view/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PostsCubit()..getPosts()),
        BlocProvider(
          create: (context) => CompetitionsCubit()..getComptition(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme(),
        home: const SplashScreen(),
      ),
    );
  }
}   //test git
