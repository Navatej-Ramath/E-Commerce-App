import 'package:e_commerce_new/admin/add_prodect.dart';
import 'package:e_commerce_new/admin/admin_login.dart';
import 'package:e_commerce_new/admin/home_admin.dart';
import 'package:e_commerce_new/screens/bottom_nav.dart';
import 'package:e_commerce_new/screens/login.dart';
import 'package:e_commerce_new/screens/signup.dart';
import 'package:e_commerce_new/screens/styles/appcolors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      home: AddProductPage(),
      theme: ThemeData(scaffoldBackgroundColor: AppColour.backgroungcolor),
      routes: {
        "signup": (context) => SignupPage(),
        "signin": (context) => LoginPage(),
        "bottomnav": (context) => BottomNav(),
        "homeadmin": (context) => HomeAdmin(),
        "addproduct": (context) => AddProductPage()
      },
    );
  }
}
