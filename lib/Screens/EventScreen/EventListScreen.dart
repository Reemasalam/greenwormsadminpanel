import 'package:flutter/material.dart';
import 'package:greenwormsadminpanel/Screens/EventScreen/EventCreateScreen.dart';
import 'package:greenwormsadminpanel/Screens/EventScreen/component/Eventcard.dart';
import 'package:sizer/sizer.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

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
                      EventCardScreen(),
                        SizedBox(height: 1.h,),
                    ],
                    ),
           ),
           ),
           Align(
            alignment: Alignment.bottomRight,
          
          child:InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>EventCreateScreen()),
                );
              },
             child: Padding(
               padding:EdgeInsets.only(bottom:20,right: 20),
               child: Image.asset('assets/add.png',
               width:6.7.h,
               height:6.7.h,
               ),
             ),
                         ),
           ),

                      
                    ],
                    ),
    );
  }
}
                 