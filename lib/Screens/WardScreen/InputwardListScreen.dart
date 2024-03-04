import 'package:flutter/material.dart';
import 'package:greenwormsadminpanel/Screens/Dashboard.dart';
import 'package:greenwormsadminpanel/Screens/WardScreen/InputwardCreateScreen.dart';
import 'package:greenwormsadminpanel/Screens/WardScreen/WardCard.dart';
import 'package:sizer/sizer.dart';

class InputwardListScreen extends StatelessWidget {
  const InputwardListScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 5.h),
                  WardCard(),
                  SizedBox(height: 1.h),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InputwardCreateScreen()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 20, right: 20),
                child: Image.asset(
                  'assets/add.png',
                  width: 6.7.h,
                  height: 6.7.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
