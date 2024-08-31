import 'package:e_commerce_new/screens/styles/appcolors.dart';
import 'package:e_commerce_new/screens/styles/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Product",
          style: WritingStyle.SubTextBold(),
        ),
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_rounded),
          onTap: () {
            Navigator.pushNamed(context, "homeadmin");
          },
        ),
      ),
      backgroundColor: AppColour.backgroungcolor2,
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text("Upload the Product Image",
                style: WritingStyle.SubTextLarge()),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(Icons.camera_alt_outlined),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Product Name",
              style: WritingStyle.SubTextLarge(),
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
                ),
              ),
            ),
            Text(
              "Product Category",
              style: WritingStyle.SubTextLarge(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.only(bottom: 10,left: 20,right: 20),
              child:DropdownButtonFormField<String>(
                dropdownColor: AppColour.backgroungcolor,
                decoration: InputDecoration(
                  border: InputBorder.none,  // Remove the border

                  hintText: 'Select a Category',
                ),
                value: _selectedValue,
                items: <String>['HeadPhones', 'Laptop', 'TV', 'Watches']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedValue = newValue;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Please select an option';
                  }
                  return null;
                },
              )
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.green.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    "Add Product",
                    style: WritingStyle.ButtonSmall(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
