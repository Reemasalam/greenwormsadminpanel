import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:greenwormsadminpanel/Screens/LoginScreen/LoginScreen.dart';
import 'package:sizer/sizer.dart';

void main()  {
  runApp(Greenwormsadminpanel());
}

class Greenwormsadminpanel extends StatelessWidget {
  const Greenwormsadminpanel({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context , Orientation ,DeviceType){
    return GetMaterialApp(home: LoginScreen(),);
  });
}

}
