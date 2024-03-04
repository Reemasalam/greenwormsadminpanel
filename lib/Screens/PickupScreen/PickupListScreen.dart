import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenwormsadminpanel/Screens/Dashboard.dart';
import 'package:greenwormsadminpanel/Screens/HomeScreen/components/JobSheetCard.dart';
import 'package:greenwormsadminpanel/Screens/PickupScreen/PickupCreateScreen.dart';
import 'package:sizer/sizer.dart';

class PickupListScreen extends StatelessWidget {
  const PickupListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      
        
                children: [   
                  SizedBox(height: 3.h,),
                   Expanded(
                    child: SingleChildScrollView(
                    child:Column(
                      children: [
                      SizedBox(height: 5.h,),
                      JobSheetCard(),
        
          SizedBox(height: 1.h,),
                    ],
                    ),
                   ),
                   ),
                   Align(
                    alignment:Alignment.bottomRight,
                         // Expanded(child: Container()),JobSheetCard(),
               child:InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PickupCreateScreen()),
                  );
                },
              child: Padding(
                padding:  EdgeInsets.only(bottom: 20, right: 20),
                child: Image.asset('assets/add.png',
                width:6.7.h,
                height:6.7.h
                          ),
              ),
                          ),
                   ),
                ],
        ),
      );
  }
}
                          
                       