import 'package:e_commerce_new/screens/styles/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset("images/headphone.png"),
          ),
           Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              'Explore\nThe Best\nProducts',
              style: WritingStyle.LargeBold()
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.only(left: 270),
            decoration:
                const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            child:  Text(
              'Next',
              style: WritingStyle.ButtonLarge(),
            ),
          )
        ],
      ),
    );
  }
}
