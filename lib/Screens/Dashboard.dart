import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenwormsadminpanel/Screens/EventScreen/EventListScreen.dart';
import 'package:greenwormsadminpanel/Screens/HomeScreen/HomeScreen.dart';
import 'package:greenwormsadminpanel/Screens/PickupScreen/PickupListScreen.dart';
import 'package:greenwormsadminpanel/Screens/ProfileSCreen/ProfileScreen.dart';
import 'package:greenwormsadminpanel/Screens/WardScreen/InputwardListScreen.dart';
//import 'package:greenwormsadminpanel/Screens/EventScreen/EventListScreen.dart';
//import 'package:greenwormsadminpanel/Screens/HomeScreen/HomeScreen.dart';
//import 'package:greenwormsadminpanel/Screens/EventScreen/EventListScreen.dart';
//import 'package:greenwormsadminpanel/Screens/HomeScreen/HomeScreen.dart';
//import 'package:greenwormsadminpanel/Screens/PickupScreen/PickupListScreen.dart';
//import 'package:greenwormsadminpanel/Screens/ProfileSCreen/ProfileScreen.dart';
//import 'package:greenwormsadminpanel/Screens/WardScreen/InputwardListScreen.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int indexNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    
      body: _getBody(indexNum),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/Home.png",
              color: (indexNum != 0) ? Color(0xff5E5F60) : Color(0xff036163),
              height: 4.h,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/pickup.png",
              height: 4.h,
              color: (indexNum != 1) ? Color(0xff5E5F60) : Color(0xff036163),
            ),
            label: "Pickup",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 6.5.w,
              height: 7.5.w,
              child: InkWell(
                onTap: () => setState(() => indexNum = 2),
                child: Image.asset(
                  "assets/event.png",
                  color: (indexNum != 2) ? Color(0xff5E5F60) : Color(0xff036163),
                  height: 4.h,
                ),
              ),
            ),
            label: "Event",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/ward.png",
              color: (indexNum != 3) ? Color(0xff5E5F60) : Color(0xff036163),
              height: 4.h,
            ),
            label: "Ward",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/bottompro.png",
              color: (indexNum != 4) ? Color(0xff5E5F60) : Color(0xff036163),
              height: 4.h,
            ),
            label: "Profile",
          ),
        ],
        iconSize: 5.w,
        selectedFontSize: 11.sp,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: indexNum,
        unselectedFontSize: 11.sp,
        selectedItemColor: Color(0xff036163),
        unselectedItemColor: Color(0xff5E5F60),
        selectedLabelStyle: GoogleFonts.lexend(fontWeight: FontWeight.w400, fontSize: 10.sp),
        unselectedLabelStyle: GoogleFonts.lexend(fontWeight: FontWeight.w400, fontSize: 10.sp),
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return PickupListScreen();
      case 2:
        return EventListScreen();
      case 3:
        return InputwardListScreen();
      case 4:
        return ProfileScreen();
      default:
        return Container();
    }
  }
}
