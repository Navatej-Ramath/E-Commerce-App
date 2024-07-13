import 'package:e_commerce_new/screens/styles/textstyle.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Text("Sign In",
                      style: WritingStyle.MainBold(),
                      textAlign: TextAlign.center),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Please enter the details below to continue",
                    style: WritingStyle.SubText(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: WritingStyle.SubTextBold(),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "example@gmail.com",
                            hintStyle: WritingStyle.SubText(),
                          ),
                        ),
                      ),
                      Text('Password', style: WritingStyle.SubTextBold()),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter the password",
                            hintStyle: WritingStyle.SubText(),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Forgot Password?",
                              style: WritingStyle.LinkTextGreen()),
                        ],
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
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: WritingStyle.ButtonSmall(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ,const SizedBox(height: 10,),Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?      ",style: WritingStyle.ordinary(),),
                    Text("Sign Up",style: WritingStyle.LinkTextGreen(),),
                  ],
                )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
