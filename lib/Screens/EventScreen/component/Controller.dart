import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:greenwormsadminpanel/main.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EventController extends GetxController{
 String?name;
 String?token;
 int?user_id;
 List EventList =[];
 List EventType =[];
 var SelectType;
 TextEditingController namecontroller = TextEditingController();
TextEditingController expensecontroller = TextEditingController();
TextEditingController participantcontroller = TextEditingController();
TextEditingController descriptioncontroller = TextEditingController();
TextEditingController eventdescriptioncontroller = TextEditingController();
TextEditingController DateTimePicker = TextEditingController();
bool loading = false; 

createEvent() async{
  loading =true;
  update();
  final Response = await post(Uri.parse(baseUrl +'/api/events'),
  headers: {
    'Content-Type': 'Application/json',
          "Authorization": "Bearer $token"
  },
  body: json.encode({
    "name":(namecontroller.text=="")?"null": int.parse(namecontroller.text),
    "organized_by": SelectType?? "",
    "date": DateTimePicker.text,
    "expense": (expensecontroller.text == "")? "null": int.parse(expensecontroller.text),
      "no_of_participants" :(participantcontroller=="")?"null":int.parse(participantcontroller.text),  
        "description" :(descriptioncontroller=="")?"null":int.parse(descriptioncontroller.text), 
          "other_description" :(eventdescriptioncontroller=="")?"null":int.parse(eventdescriptioncontroller.text), 
      
  })
  );
  print(Response.body);
  print(Response.statusCode);
  loading = false;
    update();
    if (Response.statusCode == 200 || Response.statusCode == 201) {
      Fluttertoast.showToast(msg: "event created sucessfully");
      loadEventlist();
      Get.back();
    } else {
      var data = json.decode(Response.body);
      Fluttertoast.showToast(msg: data["message"].first);
    }}


    loadEventlist() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
   // transportCoordinator.clear();
    token = pref.getString("token");
    
   user_id = pref.getInt("user_id");
    print("s=working");
    final Response = await get(
      Uri.parse(baseUrl + "events?user_ids=$user_id"),
      headers: {
        'contentType': 'application/json',
        "Authorization": "Bearer $token"
      },
    );

    if (Response.statusCode == 200) {
      var data = json.decode(Response.body);
      EventList = data["data"];
      update();
    }
  }

}