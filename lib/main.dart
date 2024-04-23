import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/app.dart';
import 'package:student_hub/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
