import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/styles/textstyle.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  LoginAdmin(){
    FirebaseFirestore.instance.collection("Admin").get().then((snapshot){
      snapshot.docs.forEach((result){
        if(result.data()['Username']!=adminnamecontroller.text.trim()){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                "Username Incorrect",
                style: WritingStyle.SubTextBold(),
              )));
        }
        if(result.data()['password']!=adminpasscontroller.text.trim()){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                "passsword Incorrect",
                style: WritingStyle.SubTextBold(),
              )));
        }
        else{
          Navigator.pushNamed(context, 'homeadmin');
        }
      });
    });
  }
  TextEditingController adminnamecontroller = new TextEditingController();
  TextEditingController adminpasscontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/login.jpg",
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text("Admin panel",
                      style: WritingStyle.MainBold(),
                      textAlign: TextAlign.center),
                  const SizedBox(
                    height: 15,
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: WritingStyle.SubTextBold(),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: adminnamecontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter name";
                            }
                            return null;
                          },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter the name",
                              hintStyle: WritingStyle.SubText(),
                            )
                        ),
                      ),
                      Text('Password', style: WritingStyle.SubTextBold()),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          obscureText: true,
                          controller: adminpasscontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter the password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter the password",
                            hintStyle: WritingStyle.SubText(),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.green.shade400,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            onPressed: () {
                              LoginAdmin();
                            },
                            child: Text(
                              "Login",
                              style: WritingStyle.ButtonSmall(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
