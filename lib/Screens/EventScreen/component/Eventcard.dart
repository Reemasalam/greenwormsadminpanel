import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class EventCardScreen extends StatelessWidget {
  const EventCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
                height: 12.h,
        width:85.w ,
        decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(3, 97, 99, 0.2),
          
        ),
        borderRadius: BorderRadius.circular(5),
        ),
            padding:EdgeInsets.only(left: 5.w,top: 2.h) ,
       // margin: EdgeInsets.only(left: 5.w,top: 2.h),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 
                  
                    Text("Event Name",
                        style: GoogleFonts.lexend(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                   ),),
                 
                  SizedBox(height: 2.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        //width: .w,
                        height:5.h,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset("assets/team.png",
                          height:3.h ,
                          width: 3.h,),
                        ),
                      ),
                     SizedBox( width: 1.w,),
                     SizedBox(
                      height: 5.h,
                       child: Text("20-02-2024",
                        style: GoogleFonts.lexend(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                     ),textAlign: TextAlign.start,),
                     ),
    SizedBox(width: 3.w,),
    Container(width: 6.w,
    height: 6.w,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.w),color: Color(0xffE6FAFD)),
    child: Image.asset("assets/rupee.png"),
    ),
                      SizedBox( width: 1.21.w,),
                     Text("46999.00",
                      style: GoogleFonts.lexend(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
    ),),
                      
       
    
    
                    ],
                  ),
               //SizedBox(height: .5.h,),
               
              
       
                
    
              ],
            ),
            Expanded(child: Container()),
              Container(width: 6.w,
    height: 6.w,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.w),color: Color(0xffE6FAFD)),
    child: Image.asset("assets/right.png"),),
                   
    SizedBox(width: 4.w,),            
          ],
        ),
      ),
    );
  }
}