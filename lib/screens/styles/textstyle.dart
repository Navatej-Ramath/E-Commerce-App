import 'package:flutter/material.dart';

class WritingStyle {
  static TextStyle LargeBold() {
    return const TextStyle(fontSize: 45, fontWeight: FontWeight.bold);
  }

  static TextStyle ButtonLarge() {
    return const TextStyle(fontSize: 30, color: Colors.white);
  }
  static TextStyle ButtonSmall() {
    return const TextStyle(fontSize: 25, color: Colors.white);
  }
  static TextStyle ordinary() {
    return const TextStyle(
        fontSize: 18, color: Colors.black,);
  }
  static TextStyle MainBold() {
    return const TextStyle(
        fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold);
  }

  static TextStyle SubText() {
    return const TextStyle(
        fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold);
  }

  static TextStyle SubTextBold() {
    return const TextStyle(
        fontSize: 23, color: Colors.black, fontWeight: FontWeight.bold);
  }
  static TextStyle SubTextBoldSmall() {
    return const TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);
  }
  static TextStyle LinkText() {
    return const TextStyle(
        fontSize: 18, color: Color(0xFFFd6f3e), fontWeight: FontWeight.bold);
  }
  static TextStyle LinkTextGreen() {
    return const TextStyle(
        fontSize: 18, color: Color(0xFF66BE6A), fontWeight: FontWeight.bold);
  }
  static TextStyle LinkTextLarge() {
    return const TextStyle(
        fontSize: 22, color: Color(0xFFFd6f3e), fontWeight: FontWeight.bold);
  }
  static TextStyle SubTextLarge() {
    return const TextStyle(
        fontSize: 23, color: Colors.grey, fontWeight: FontWeight.bold);
  }
}
