import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenwormsadminpanel/Screens/PickupScreen/Controller.dart';
import 'package:greenwormsadminpanel/Screens/PickupScreen/PickupListScreen.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

class PickupCreateScreen extends StatelessWidget {
  PickupCreateScreen({super.key});

  PickupController pctrl = Get.put(PickupController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.39.w, top: 3.25.h),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 1.2.w),
                  Text(
                    ' Create Pickup Request',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 13.33.sp,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.01.w),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            Expanded(child: SingleChildScrollView(
              child: GetBuilder<PickupController>(builder: (_) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.89.w,
                      ),
                      child: Text(
                        ' Select pickup date',
                        style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 11.66.sp,
                            color: Color.fromRGBO(52, 64, 84, 1),
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.01.w),
                      ),
                    ),
                    SizedBox(height: .67.h),
                    Container(
                      width: 86.w,
                      height: 4.94.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 7.14.w),
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        border:
                            Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0),
                            blurRadius: .50.w,
                            offset: Offset(0, 1),
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(255, 255, 255, 1),
                          ],
                        ),
                      ),
                      child: InkWell(
                        onTap: () async {
                          DateTime? dt = await showDatePicker(
                              context: context,
                              firstDate: DateTime.now(),
                              lastDate:
                                  DateTime.now().add(Duration(days: 365)));

                          if (dt != null) {
                            pctrl.DateTimePicker.text =
                                DateFormat("y-MM-dd").format(dt);
                            pctrl.update();
                          }
                        },
                        child: TextField(
                          controller: pctrl.DateTimePicker,
                          enabled: false,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Select Date"),
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 11.66.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.89.w,
                      ),
                      child: Text(
                        ' Material Selection',
                        style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 11.66.sp,
                            color: Color.fromRGBO(52, 64, 84, 1),
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.01.w),
                      ),
                    ),
                    SizedBox(height: .67.h),
                    Container(
                      width: 86.w,
                      height: 4.94.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 7.14.w),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        border:
                            Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0),
                            blurRadius: .50.w,
                            offset: Offset(0, 1),
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(255, 255, 255, 1),
                          ],
                        ),
                      ),
                      child: DropdownButton<String>(
                        //controller: ectrl.enterController,
                        value: pctrl.materialSelection,
                        hint: Text("Pickup Item"),
                        underline: Container(),
                        items: ["reject", "recycle", "mixed"]
                            .map((e) => DropdownMenuItem(
                                value: e, child: Text(e.capitalizeFirst!)))
                            .toList(),
                        isExpanded: true,

                        onChanged: (value) {
                          pctrl.materialSelection = value;
                          pctrl.update();
                        },
                        // : InputDecoration(
                        //   border: InputBorder.none,
                        //   hintText: "Pickup Item",
                        //   suffixIcon: Padding(
                        //     padding: EdgeInsets.only(right: 15.0),
                        //     child: Icon(
                        //       Icons.arrow_drop_down_outlined,
                        //       color: Color(0xff667085),
                        //     ),
                        //   ),
                        // ),
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 11.66.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.89.w,
                      ),
                      child: Text(
                        ' Select LSG',
                        style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 11.66.sp,
                            color: Color.fromRGBO(52, 64, 84, 1),
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.01.w),
                      ),
                    ),
                    SizedBox(height: .67.h),
                    Container(
                      width: 86.w,
                      height: 4.94.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 7.14.w),
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        border:
                            Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0),
                            blurRadius: .50.w,
                            offset: Offset(0, 1),
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(255, 255, 255, 1),
                          ],
                        ),
                      ),
                      child: DropdownButton(
                        value: pctrl.selectedCollectionPoint,
                        hint: Text("Select Transport coordinator"),
                        underline: Container(),
                        items: pctrl.CollectionPointList.map((e) =>
                                DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                        e["name"].toString().capitalizeFirst!)))
                            .toList(),
                        isExpanded: true,

                        onChanged: (value) {
                          pctrl.selectedCollectionPoint = value;
                          pctrl.update();
                        },
                        //controller: ectrl.enterController,
                        // decoration: InputDecoration(
                        //   border: InputBorder.none,
                        //   hintText: "Select",
                        //   suffixIcon: Padding(
                        //     padding: EdgeInsets.only(right: 15.0),
                        //     child: Icon(
                        //       Icons.keyboard_arrow_down_outlined,
                        //       color: Color(0xff667085),
                        //     ),
                        //   ),
                        // ),
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 11.66.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.89.w,
                      ),
                      child: Text(
                        'Approx Weight (KG)',
                        style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 11.66.sp,
                            color: Color.fromRGBO(52, 64, 84, 1),
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.01.w),
                      ),
                    ),
                    SizedBox(height: .67.h),
                    Container(
                      width: 86.w,
                      height: 4.94.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 7.14.w),
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        border:
                            Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0),
                            blurRadius: .50.w,
                            offset: Offset(0, 1),
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(255, 255, 255, 1),
                          ],
                        ),
                      ),
                      child: TextField(
                        controller: pctrl.weightController,
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Enter Weight"),
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 11.66.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.89.w,
                      ),
                      child: Text(
                        'Select Transport coordinator',
                        style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 11.66.sp,
                            color: Color.fromRGBO(52, 64, 84, 1),
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.01.w),
                      ),
                    ),
                    SizedBox(height: .67.h),
                    Container(
                      width: 86.21.w,
                      height: 4.94.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 7.14.w),
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        border:
                            Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0),
                            blurRadius: .50.w,
                            offset: Offset(0, 1),
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(255, 255, 255, 1),
                          ],
                        ),
                      ),
                      child: DropdownButton(
                        //controller: ectrl.enterController,
                        value: pctrl.SelectedTransportCoordinator,
                        hint: Text("Select Transport coordinator"),
                        underline: Container(),
                        items: pctrl.transportCoordinator
                            .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                    e["name"].toString().capitalizeFirst!)))
                            .toList(),
                        isExpanded: true,

                        onChanged: (value) {
                          pctrl.SelectedTransportCoordinator = value;
                          pctrl.update();
                        },
                        // decoration: InputDecoration(
                        //   border: InputBorder.none,
                        //   hintText: "Select Transport coordinator",
                        //   suffixIcon: Padding(
                        //     padding: EdgeInsets.only(right: 15.0),
                        //     child: Icon(
                        //       Icons.keyboard_arrow_down_outlined,
                        //       color: Color(0xff667085),
                        //     ),
                        //   ),
                        // ),
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 11.66.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                );
              }),
            )),
            InkWell(
              onTap: () {
                pctrl.loading = true;
                pctrl.update();
                pctrl.createJob();
                // Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 7.14.w),
                child: Container(
                  height: 4.94.h,
                  width: 86.21.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xff036163),
                      borderRadius: BorderRadius.circular(1.h)),
                  child: (pctrl.loading)
                      ? LoadingAnimationWidget.staggeredDotsWave(
                          color: Colors.white, size: 24)
                      : Text("Create Pickup Request",
                          style: GoogleFonts.lexend(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13.33.sp,
                                fontWeight: FontWeight.w600),
                          )),
                ),
              ),
            ),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }
}
