import 'package:flutter/material.dart';
import 'package:greenwormsadminpanel/Screens/EventScreen/component/Eventcard.dart';
import 'package:sizer/sizer.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Expanded(child: SingleChildScrollView(
                    child:Column(children: [
                      SizedBox(height: 5.h,),
                      EventCardScreen(),
                        SizedBox(height: 1.h,),
          InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>EventCardScreen()),
                );
              },
             child: Padding(
               padding:EdgeInsets.only(top:78.h,left:75.w),
               child: Image.asset('assets/add.png',
               width:6.7.h,
               height:6.7.h,),
             ),
                         ),
           
                          SizedBox(height: 1.h,),
                    ],
                    ),
                   ),
                   ),
        ],
      ),
    );
  }
}