 import 'package:flutter/material.dart';
 import 'package:greenwormsadminpanel/Screens/Dashboard.dart';
 import 'package:sizer/sizer.dart';

 class InputwardListScreen extends StatelessWidget {
   const InputwardListScreen({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
      body: Column(
       children: [    
         IconButton(
           icon: Padding(
             padding:  EdgeInsets.only(top:76.h,left: 75.w ),
             child: Image.asset('assets/add.png',
             width:6.7.h,
             height:6.7.h,),
                         ),
           onPressed: () {
             showDialog(
                   context: context,
                   builder: (BuildContext context) {
                   return Center(
                       child:Card(),
                   );
                   }
             );
           }
         ),
       ],
      ),
     );
   }
 }