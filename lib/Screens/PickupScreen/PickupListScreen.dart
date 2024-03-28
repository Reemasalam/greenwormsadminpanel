import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenwormsadminpanel/Screens/Dashboard.dart';
import 'package:greenwormsadminpanel/Screens/HomeScreen/components/JobSheetCard.dart';
import 'package:greenwormsadminpanel/Screens/PickupScreen/Controller.dart';
import 'package:greenwormsadminpanel/Screens/PickupScreen/PickupCreateScreen.dart';
import 'package:sizer/sizer.dart';

class PickupListScreen extends StatelessWidget {
  PickupListScreen({super.key});
  final PickupController pctrl = Get.put(PickupController());
   Future<void> _refreshData() async {
    await pctrl.loadJoblist();
    await pctrl.loadUser();
    await pctrl.loadCollectionPoints();
  }
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PickupController>(builder: (_) {
      return Stack(
          children: [
            SizedBox(
              height: 3.h,
            ),
            Positioned(
              top: 30,
              bottom: 0,
              right: 0,
              left: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (var data in pctrl.JobList) JobSheetCard(jdata: data),
                    SizedBox(
                      height: 1.h,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              // bottom: 10,
              // right: 10,
              alignment: Alignment.bottomRight,
              // Expanded(child: Container()),JobSheetCard(),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PickupCreateScreen()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20, right: 20),
                  child:
                      Image.asset('assets/add.png', width: 6.7.h, height: 6.7.h),
                ),
              ),
            ),
          ],
        );
    
    });
  }
}
