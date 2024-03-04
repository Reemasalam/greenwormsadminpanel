import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenwormsadminpanel/Screens/PickupScreen/PickupListScreen.dart';
import 'package:sizer/sizer.dart';

class PickupCreateScreen extends StatelessWidget {
  const PickupCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
               
                 Padding(
                   padding:  EdgeInsets.only(left:4.39.w,top:3.25.h ),
                   child: Row(
                     children: [
                       IconButton(
                                 icon: Icon(Icons.arrow_back_ios),
                               
                                 onPressed: () {
                                   Navigator.pop(context);
                       
                                 },
                        
                       ),
                       SizedBox(width:1.2.w),
                        Text(
                      ' Create Pickup Request',
                    
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 13.33.sp,
                          color: Color.fromRGBO(0,0,0, 1),
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.01.w),
                    ),
                     ],
                   ),
                 ),
                 SizedBox(height: 2.h),
                
                  Padding(
                    padding:  EdgeInsets.only(left: 6.89.w,),
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
                  height:4.94.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 7.14.w),
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.w),
                    border: Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
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
                    //controller: ectrl.enterController,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "1000"),
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 11.66.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
               SizedBox(height: 2.h),
                
                  Padding(
                    padding:  EdgeInsets.only(left: 6.89.w,),
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
                  height:4.94.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 7.14.w),
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.w),
                    border: Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
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
                    //controller: ectrl.enterController,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Pickup Item",
                         suffixIcon: Padding(
                  padding: EdgeInsets.only(right:15.0),
                  child: Icon(
                    Icons.arrow_drop_down_outlined,
                    color:Color(0xff667085),
                  ),),),
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 11.66.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                
                  Padding(
                    padding:  EdgeInsets.only(left: 6.89.w,),
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
                  height:4.94.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 7.14.w),
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.w),
                    border: Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
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
                  child: TextFormField(
                    //controller: ectrl.enterController,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Select",
                        suffixIcon: Padding(
                  padding: EdgeInsets.only(right:15.0),
                  child: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color:Color(0xff667085),
                  ),),
                    ),
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 11.66.sp,
                      color: Colors.black,
                    ),
                    
                     ),
                  ),
                  
                
                        SizedBox(height: 2.h),
                       Padding(
                    padding:  EdgeInsets.only(left: 6.89.w,),
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
                  height:4.94.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 7.14.w),
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.w),
                    border: Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
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
                    //controller: ectrl.enterController,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "1000"),
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 11.66.sp,
                      color: Colors.black,
                    ),
                  ),
                ),       
                           SizedBox(height: 2.h),
                       Padding(
                    padding:  EdgeInsets.only(left: 6.89.w,),
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
                  height:4.94.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 7.14.w),
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.w),
                    border: Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
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
                    //controller: ectrl.enterController,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Select Transport coordinator",
                         suffixIcon: Padding(
                  padding: EdgeInsets.only(right:15.0),
                  child: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color:Color(0xff667085),
                  ),),),
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 11.66.sp,
                      color: Colors.black,
                    ),
                  ),
                ),

          SizedBox(
              height:25.39.h ,
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding:  EdgeInsets.only(left:7.14.w),
                child: Container(
                  height: 4.94.h,
                  width: 86.21.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                          color: Color(0xff036163),
                          borderRadius: BorderRadius.circular(1.h)),
                      child: Text("Create Pickup Request",
                          style: GoogleFonts.lexend(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13.33.sp,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
              ),
                ),
              
          
            

            ],
        ),
      
        ),
    );
  }
}