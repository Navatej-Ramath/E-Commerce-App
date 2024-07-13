import 'package:e_commerce_new/screens/signup.dart';
import 'package:e_commerce_new/screens/styles/appcolors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  SignupPage(),
        theme: ThemeData(scaffoldBackgroundColor: AppColour.backgroungcolor));
  }
}
