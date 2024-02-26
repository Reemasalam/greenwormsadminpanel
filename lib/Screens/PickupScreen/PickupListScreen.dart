import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenwormsadminpanel/Screens/Dashboard.dart';
import 'package:sizer/sizer.dart';

class PickupListScreen extends StatelessWidget {
  const PickupListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
      children: [    
        IconButton(
          icon: Padding(
            padding:  EdgeInsets.only(top:71.h,left: 75.w ),
            child: Image.asset('assets/add.png',
            width:6.7.h,
            height:6.7.h,),
                        ),
          onPressed: () {
            showDialog(
                  context: context,
                  builder: (BuildContext context) {
                     return Center();

                 },
            );
          },
        ),
        Expanded(child:Container(),),
        Dashboard(),
            ],
        ),
      ),
    );
    
      

}
}