import 'package:flutter/cupertino.dart';

import '../screens/styles/textstyle.dart';

class DoubleName extends StatelessWidget {
  const DoubleName({super.key,required this.text1,required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: WritingStyle.SubTextBold(),
        ),
        Text(
          text2,
          style: WritingStyle.LinkText(),
        )
      ],
    );
  }
}
