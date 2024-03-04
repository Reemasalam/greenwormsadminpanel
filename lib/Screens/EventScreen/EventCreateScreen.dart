import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenwormsadminpanel/Screens/EventScreen/EventListScreen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class EventCreateScreen extends StatelessWidget {
  const EventCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                      Padding(
                   padding:  EdgeInsets.only(left:3.39.w,top:6.h ),
                   child: Row(
                     children: [
                       IconButton(
                                 icon: Icon(Icons.arrow_back_ios),
                               
                                 onPressed: () {
                                   Navigator.pop(context);
                       
                                 },
                        
                       ),
                      // SizedBox(width:1.w),
                        Text(
                      ' Create Events ',
                    
                      style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 13.33.sp,
                          color: Color.fromRGBO(0,0,0, 1),
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.01.w),
                    ),
                     ],
                   ),
                 ),
                 SizedBox(height: 2.h,),
                 _textfield('Name'),
              _textfield('Expense'),
              _textfield('Date'),
              _textfield('No Of Participants'),
              _textfield('Description'),
              _textfield('Event Description'),
              _textbox('Event Type'),
             SizedBox(height:3.h),
                  Container(
                  width: 83.68.w,
                  height: 12.82.h,
                  margin: EdgeInsets.only(left: 8.w),
                  child: Image.asset('assets/upload.png')
                ),SizedBox(height:2.6.h),
               // if(mctrl.materialimage!=null)
                //  Container(
                //   width: 78.w,
                //   height: 5.8.h,
                // //  color: Colors.amber,
                //   alignment: Alignment.centerLeft,
                //   padding: EdgeInsets.only(left: 3.w),
                //   margin: EdgeInsets.only(
                    
                //     left: 10.w,
                //   ),
                //   child: Image.asset('assets/imageupload.png'),
                // ),
                 SizedBox(height: 3.h,),
             InkWell(
              onTap: () {
                Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) =>EventListScreen(),),
               );
             },
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
                  'Create Event',
                  style: GoogleFonts.lexend(
                      fontSize: 13.33.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
),),
                ),
              ),

          
      
                SizedBox(height: 1.6.h),
             
                
      



    
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
        padding:  EdgeInsets.only(left: 7.w),
        child: Text(
          text,
          style:
              GoogleFonts.lexend(fontSize: 11.66.sp, fontWeight: FontWeight.w500,color:Color(0xff344054)),
        ),
      ),
      SizedBox(height: 0.89.h),
      Container(
          alignment: Alignment.centerLeft,
          height: 4.94.h,
          width: 84.78.w,
          margin: EdgeInsets.only(left:7.w),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFCBCBCB)),
            borderRadius: BorderRadius.circular(6),
          ),
          child: DropdownButton<String>(
              isExpanded: true,
              underline: Container(),
              items: ["Type 1", "Type 2", "Type 3", "Type 4"]
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
        padding:  EdgeInsets.only(left:7.w),
        child: Text(
          text,
          style:
              GoogleFonts.lexend(fontSize: 11.66.sp, fontWeight: FontWeight.w500,color:Color(0xff344054)),
        ),
      ),
      SizedBox(height: 0.89.h),
      Container(
        alignment: Alignment.centerLeft,
        height: 4.94.h,
        width: 86.w,
        margin: EdgeInsets.only(left: 7.w),
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