import 'package:e_commerce_new/screens/profile.dart';
import 'package:e_commerce_new/screens/styles/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'home.dart';
import 'order.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});


  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List Screens = [const HomeScreen(), const OrderScreen(), const ProfileScreen()];
  int CurrentIndex = 0;
  void ChangeScreen(index){
    setState(() {
      CurrentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColour.backgroungcolor,
        animationDuration: const Duration(milliseconds: 350),
        color: Colors.black,
        items: const [
          Icon(Icons.home_outlined,color: Colors.white,),
          Icon(Icons.shopping_bag_outlined,color: Colors.white),
          Icon(Icons.person_outlined,color: Colors.white)
        ],
        onTap: ChangeScreen,
      ),
      body: SafeArea(
        child:Screens[CurrentIndex] ,
      ),
    );
  }
}
