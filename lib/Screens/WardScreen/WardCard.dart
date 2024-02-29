import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class WardCard extends StatelessWidget {
  const WardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 8.h,
      width:85.w ,
      decoration: BoxDecoration(
      border: Border.all(
        color: Color.fromRGBO(3, 97, 99, 0.2),
        
      ),
      borderRadius: BorderRadius.circular(5),
      ),


      child: Column(
        children: [
          
            Row(
              children: [
                SizedBox(
                  //width: .w,
                  height:5.h,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/team.png",
                      height:3.5.h ,
                      width: 3.5.h,),
                    ),
                  ),
                ),
                SizedBox( width: 1.21.w,),
                Text("Team Name",
                style: GoogleFonts.lexend(
                      fontSize: 13.33.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
),),

                



                

              ],
            ),
         //SizedBox(height: .5.h,),
         
         Align(
          alignment: Alignment.centerLeft,
           child: Padding(
             padding: EdgeInsets.only(left: 12.w,),
             child: Text("lsg name",
                    style: GoogleFonts.lexend(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
             
             ),
             textAlign: TextAlign.left,
             ),
           ),
         ),
          

        ],
      ),
    );
  }
}