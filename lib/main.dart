import 'package:controller_financas/firebase_options.dart';
import 'package:controller_financas/pages/form_page.dart';
import 'package:controller_financas/pages/home_page.dart';
import 'package:controller_financas/pages/resume_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MaterialApp(
    home: HomePage(),
  )
  );
}

