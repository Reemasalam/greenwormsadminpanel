import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenwormsadminpanel/Screens/EventScreen/EventCreateScreen.dart';
import 'package:greenwormsadminpanel/Screens/HomeScreen/Components/HMTcard.dart';
import 'package:greenwormsadminpanel/Screens/PickupScreen/PickupCreateScreen.dart';
import 'package:greenwormsadminpanel/Screens/ProfileSCreen/ProfileScreen.dart';
import 'package:greenwormsadminpanel/Screens/WardScreen/InputwardCreateScreen.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
    @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int indexNum = 0;

   @override
  Widget build(BuildContext context) {
    return  PreferredSize(
      preferredSize: Size.fromHeight(2.h),
    
       child:BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/Home.png",
                  color:
                      (indexNum != 0) ? Color(0xff5E5F60) : Color(0xff036163),
                  height: 7.h,
                  
                ),
                label: "Home",
              
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/pickup.png",
                  height: 7.h,
                  color:
                      (indexNum != 1) ? Color(0xff5E5F60) : Color(0xff036163),
                ),
                label: "Pickup",
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 6.5.w,
                  height: 6.5.w,
                  child: Image.asset(
                    "assets/event.png",
                    color:
                        (indexNum != 2) ? Color(0xff5E5F60) : Color(0xff036163),
                    height: 7.h,
                  ),
                ),
                label: "Event",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/ward.png",
                  color:
                      (indexNum != 3) ? Color(0xff5E5F60) : Color(0xff036163),
                  height: 7.h,
                ),
                label: "Ward",
              ),
               BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/Profile1.png",
                  color:
                      (indexNum != 3) ? Color(0xff5E5F60) : Color(0xff036163),
                  height: 7.h,
                ),
                label: "Profile",
              ),
            ],
            iconSize: 50,
            selectedFontSize: 10,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            currentIndex: indexNum,
           selectedLabelStyle: GoogleFonts.lexend(fontSize: 10.sp,fontWeight: FontWeight.w400,color: Color(0xff036163)),
           
            
            onTap: (int index) {
              setState(() {
                indexNum = index;
              });
            }),
      
    );
  }
}