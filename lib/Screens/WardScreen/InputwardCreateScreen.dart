import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenwormsadminpanel/Screens/WardScreen/InputwardController.dart';
import 'package:greenwormsadminpanel/Screens/WardScreen/InputwardListScreen.dart';
import 'package:sizer/sizer.dart';

class InputwardCreateScreen extends StatelessWidget {
  const InputwardCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
         //body: GetBuilder<InputwardController>(
        //builder:(_) {
       body: SingleChildScrollView(
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
                      ' Create Input ward collection ',
                    
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
                 _textbox('LSG'),
              _textfield('Ward Number'),
              _textfield('Date'),
              _textfield('HKS Team Name'),
              _textfield('Collectiom Amount'),
              _textfield('HKS Incentive'),
              _textfield('Shops Visited'),
              _textfield('Shops Paid'),
              _textfield('Shops Vacant'),
              _textfield('Shops With No Money'),
              _textfield('Shops With No Interest'),
              _textfield('Shops Non-Cooperated'),
              _textfield('Houses Visited'),
              _textfield('Houses Paid'),
              _textfield('Houses Vacant'),
              _textfield('Houses Not Interested'),
              _textfield('Houses With No Money'),
              _textfield('Houses Non-Cooperated'),
             SizedBox(height:2.49.h),
             InkWell(
              //onTap: () {
                //Navigator.push(
                  //context,
                 // MaterialPageRoute(builder: (context) => InputwardListScreen(),),
               // );
             // },
             child: Container(
                alignment: Alignment.center,
                height: 4.94.h,
                width: 86.w,
                margin: EdgeInsets.only(left:5.w,bottom: 2.5.w),
                decoration: BoxDecoration(
                  color: Color(0xFF036163),
                  borderRadius: BorderRadius.circular(1.h),
                ),
                child: Text(
                  'Create Input ward collection',
                  style: GoogleFonts.lexend(
                      fontSize: 13.33.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF)),
                ),
              ),

           




    
        ),
          ],
        ),
       ),
    );
      
  }
        


  }
   _textbox(String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding:  EdgeInsets.only(left: 5.w),
        child: Text(
          text,
          style:
              GoogleFonts.lexend(fontSize: 11.66.sp, fontWeight: FontWeight.w500),
        ),
      ),
      SizedBox(height: 0.89.h),
      Container(
          alignment: Alignment.centerLeft,
          height: 4.94.h,
          width: 84.78.w,
          margin: EdgeInsets.only(left:5.w),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFCBCBCB)),
            borderRadius: BorderRadius.circular(6),
          ),
          child: DropdownButton<String>(
              isExpanded: true,
              underline: Container(),
              items: ["Amount", "Amount", "Amount", "Amount"]
                  .map((e) => DropdownMenuItem<String>(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (value) {}),),
              SizedBox(height: 1.68.h),
    ],
  );
}
_textfield(String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding:  EdgeInsets.only(left:5.w),
        child: Text(
          text,
          style:
              GoogleFonts.lexend(fontSize: 11.66.sp, fontWeight: FontWeight.w500),
        ),
      ),
      SizedBox(height: 0.89.h),
      Container(
        alignment: Alignment.centerLeft,
        height: 4.94.h,
        width: 86.w,
        margin: EdgeInsets.only(left: 5.w),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFCBCBCB)),
          borderRadius: BorderRadius.circular(6),
        ),
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.fromLTRB(2.89.w, 1.34.h, 2.89.w, 2.1.h)),
          style: GoogleFonts.poppins(
              color: Color(0xFF1F41BA),
              fontSize: 10.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
      SizedBox(height: 1.68.h),
    ],
  );
}