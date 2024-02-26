import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class JobSheetCard extends StatelessWidget {
  const JobSheetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91.w,
        margin: EdgeInsets.symmetric(vertical: 2.5),
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xff007C58).withOpacity(0.03.w),
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(0.9.h)),
            child: Padding(padding: EdgeInsets.fromLTRB(6.17.w, 1.h, 0.w, 0.h),
            child: Column(
              children: [
                 Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 27.47.w,
                    height: 2.5.h,
                    margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(
                        color: Color(0xff036163).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5.8.h)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          width: 1.5.h,
                          height: 1.5.h,
                          decoration: BoxDecoration(
                              color: Color(0xff036163),
                              borderRadius: BorderRadius.circular(25.h)),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        SizedBox(
                          width: 19.w,
                          child: Text("In Progress",
                              style: GoogleFonts.lexend(
                                  fontSize: 8.33.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff036163))),
                        ),
                      ],
                    ),
                  ),
                ),
                 SizedBox(
                height: 2.h,
              ),
               Row(
                children: [
                  SizedBox(
                      width: 1.7.h,
                      height: 1.7.h,
                      child: Image.asset("assets/jobid.png")),
                  SizedBox(
                    width: 2.w,
                  ),
                  SizedBox(
                    width: 39.4.w,
                    child: Text(
                      "Job Id",
                      style: GoogleFonts.lexend(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6A6A6A)),
                    ),
                  ),
                  Text(
                "#1" ,   //jobData["id"].toString(),
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000)),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 2.w,
              ),
              Container(
                width: 80.w,
                height: 0.01.h,
                color: Colors.black.withOpacity(0.2.w),
              ),
              SizedBox(
                height: 2.w,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 1.7.h,
                      height: 1.7.h,
                      child: Image.asset("assets/jobid.png")),
                  SizedBox(
                    width: 2.w,
                  ),
                  SizedBox(
                    width: 39.4.w,
                    child: Text(
                      "Pickup Date ",
                      style: GoogleFonts.lexend(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6A6A6A)),
                    ),
                  ),
                  Text(
                 "18-02-24", //  jobData["date"].toString(),
                    textAlign: TextAlign.end,
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000)),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 2.w,
              ),
              Container(
                width: 80.w,
                height: 0.01.h,
                color: Colors.black.withOpacity(0.2.w),
              ),
              SizedBox(
                height: 2.w,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 1.7.h,
                      height: 1.7.h,
                      child: Image.asset("assets/item.png")),
                  SizedBox(
                    width: 2.w,
                  ),
                  SizedBox(
                    width: 39.4.w,
                    child: Text(
                      "Pickup Item",
                      style: GoogleFonts.lexend(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6A6A6A)),
                    ),
                  ),
                  Text(
                   "mixed waste", //jobData["material_type"].toString(),
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000)),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 2.w,
              ),
              Container(
                width: 80.w,
                height: 0.01.h,
                color: Colors.black.withOpacity(0.2.w),
              ),
              SizedBox(
                height: 2.w,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 1.7.h,
                      height: 1.7.h,
                      child: Image.asset("assets/quantity.png")),
                  SizedBox(
                    width: 2.w,
                  ),
                  SizedBox(
                    width: 39.4.w,
                    child: Text(
                      "Approx Qty",
                      style: GoogleFonts.lexend(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6A6A6A)),
                    ),
                  ),
                  Text(
                  "1000kg", // jobData["weight"].toString(),
                    style: GoogleFonts.lexend(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000)),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 2.w,
              ),
              Container(
                width: 80.w,
                height: 0.01.h,
                color: Colors.black.withOpacity(0.2.w),
              ),
              SizedBox(
                height: 2.w,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 1.7.h,
                      height: 1.7.h,
                      child: Image.asset("assets/marker.png")),
                  SizedBox(
                    width: 3.w,
                  ),
                  SizedBox(
                    width: 39.4.w,
                    child: Text(
                      "location",
                      style: GoogleFonts.lexend(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6A6A6A)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
               "Logidots Technologies,Atomic Building \n Kazhakootam,Tvm", //  jobData["collection_point_data"]["name"].toString(),
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lexend(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
             
            ],),)
            
    );
  }
}