import 'package:flutter/material.dart';
import 'package:greenwormsadminpanel/Screens/Dashboard.dart';
import 'package:greenwormsadminpanel/Screens/HomeScreen/Components/HMTcard.dart';
import 'package:greenwormsadminpanel/Screens/HomeScreen/Components/JobSheetCard.dart';
import 'package:greenwormsadminpanel/Screens/HomeScreen/components/HMTitlecard.dart';
import 'package:greenwormsadminpanel/Screens/HomeScreen/components/HMTnextcard.dart';
import 'package:greenwormsadminpanel/Screens/HomeScreen/components/JobList.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
    
        Scaffold(
          body: Stack(
                children: [
                  
                   Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                      child:Container(
                        width: 100.w,
                        height: 25.76.h,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(2, 97, 99, 1),
                        ),
                      ),
                    ),
                    Positioned(left: 6.8.w, top: 17.41.h, child: HMTPrimarycard()),
               Positioned(left: 2.7.w, right: 2.7.w, top: 7.6.h, child: HMTitle()),
            
                    Positioned(
                        left: 4.7.w,
                        right: 4.7.w,
                        top: 35.5.h,
                        bottom: 5,
                        child: JobListCard()),
               Positioned(left: 50.5.w, top: 17.41.h, child: HMTsmall()), 
          
               
                ],
              ),
              
        );

     
  }
}
