
import 'package:e_commerce_new/screens/styles/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/double_name.dart';
import '../widgets/products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List Categories = [
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/watch.png",
    "images/TV.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 16, right: 16, bottom: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hey Shivam',
                        style: WritingStyle.MainBold(),
                      ),
                      Text('Good Morning', style: WritingStyle.SubText())
                    ],
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/boy.jpg',
                        fit: BoxFit.cover,
                        width: 70,
                        height: 70,
                      ))
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search Products',
                      hintStyle: WritingStyle.SubText(),
                      prefixIcon: const Icon(Icons.search)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const DoubleName(text1: "Categories", text2: "see all"),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFFd6f3e),
                        borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.only(right: 20),
                    width: 70,
                    height: 130,
                    padding: const EdgeInsets.all(10),
                    child: Center(
                        child: Text(
                      "All",
                      style: WritingStyle.ButtonLarge(),
                    )),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 130,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Categories_inputs(image: Categories[index]);
                        },
                        itemCount: Categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const DoubleName(text1: "Products", text2: "see all"),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children:  [
                    Products(image_path: "images/headphone2.png",name: "Headphones",price: "100",),
                    Products(image_path: "images/laptop2.png",name: "Laptop",price: "500",),
                    Products(image_path: "images/watch2.png",name: "Apple Watch",price: "300",)
          ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Categories_inputs extends StatelessWidget {
  Categories_inputs({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(right: 20),
      width: 90,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
          ),
          const Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
