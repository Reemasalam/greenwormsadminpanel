import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:greenwormsadminpanel/Screens/Dashboard.dart';
import 'package:greenwormsadminpanel/Screens/LoginScreen/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';


String baseUrl = "https://api.greenworms.alpha.logidots.com/api/";
String login = "";

void main() async {
   await WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences =  await SharedPreferences.getInstance();
  login = preferences.getString("LOGIN") ?? "";
  runApp(Greenwormsadminpanel());
}

class Greenwormsadminpanel extends StatelessWidget {
  const Greenwormsadminpanel({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context , Orientation ,DeviceType){
    return GetMaterialApp(
       home: (login == "IN") ? Dashboard() : LoginScreen(),
    );
  });
}

}
