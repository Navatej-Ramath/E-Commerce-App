import 'package:e_commerce_new/screens/styles/appcolors.dart';
import 'package:e_commerce_new/screens/styles/textstyle.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  GestureDetector(
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      size: 40,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Image.asset(
                    "images/headphone2.png",
                    height: 400,
                    width: 400,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Headphone",
                          style: WritingStyle.MainBold(),
                        ),
                        Text(
                          "\$300",
                          style: WritingStyle.LinkTextLarge(),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Details",
                      style: WritingStyle.SubTextBold(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                        'When considering a headphone product with a power rating of 100W, it\'s essential to clarify that this specification is quite unusual for standard headphones. Typical headphones are designed to handle power levels much lower than 100W.'),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  AppColour.apporange)),
                          child: Text(
                            'Buy Now',
                            style: WritingStyle.ButtonLarge(),
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
