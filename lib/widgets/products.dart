import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/styles/textstyle.dart';

class Products extends StatelessWidget {
  const Products({super.key,required this.image_path,required this.name,required this.price});
  final String image_path;
  final String name;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Image.asset(
            image_path,
            height: 150,
            width: 150,
          ),
          Text(
            name,
            style: WritingStyle.SubTextBoldSmall(),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: WritingStyle.LinkTextLarge(),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                  padding: const EdgeInsets.all(3),
                  color: const Color(0xFFFd6f3e),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
