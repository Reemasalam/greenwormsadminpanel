import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:greenwormsadminpanel/main.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PickupController extends GetxController {
  String? materialSelection;
  String? token;
  List transportCoordinator = [];
  List CollectionPointList = [];
  List JobList = [];
  var selectedCollectionPoint;
  var SelectedTransportCoordinator;
  TextEditingController weightController = TextEditingController();
  TextEditingController DateTimePicker = TextEditingController();
  bool loading = false; 



  createJob() async {
    loading = true;
    update();

    final Response = await post(Uri.parse(baseUrl + "jobs/assign"),
        headers: {
          'Content-Type': 'Application/json',
          "Authorization": "Bearer $token"
        },
        body: json.encode({
          "collection_point_id": selectedCollectionPoint["id"] ?? "",
          "transport_cordinator_id": SelectedTransportCoordinator["id"] ?? "",
          "materialType": materialSelection ?? "",
          "date": DateTimePicker.text,
          "approximateWeight": (weightController.text == "")
              ? "null"
              : int.parse(weightController.text)
        }));

    print(Response.body);
    print(Response.statusCode);
    loading = false;
    update();
    if (Response.statusCode == 200 || Response.statusCode == 201) {
      Fluttertoast.showToast(msg: "Job assigned sucessfully");
      loadJoblist();
      Get.back();
    } else {
      var data = json.decode(Response.body);
      Fluttertoast.showToast(msg: data["message"].first);
    }
  }

  loadUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    transportCoordinator.clear();
    token = pref.getString("token");
    print("s=working");
    final Response = await get(
      Uri.parse(baseUrl + "users?user_type=transport_cordinator"),
      headers: {
        'contentType': 'application/json',
        "Authorization": "Bearer $token"
      },
    );
    print(Response.body);
    print(Response.statusCode);

    if (Response.statusCode == 200) {
      var js = json.decode(Response.body);
      for (var data in js["data"])
        if (data["user_type"] == "transport_cordinator")
          transportCoordinator.add(data);
      update();
    }
  }

  loadCollectionPoints() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    token = pref.getString("token");
    final Response = await get(
      Uri.parse(baseUrl + "collection-point?perPage=200&page=1"),
      headers: {
        'contentType': 'application/json',
        "Authorization": "Bearer $token"
      },
    );
    print(Response.body);
    print(Response.statusCode);
    if (Response.statusCode == 200) {
      var js = json.decode(Response.body);
      CollectionPointList = js["data"];
      update();
    }
  }

  loadJoblist() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    transportCoordinator.clear();
    token = pref.getString("token");
    print("s=working");
    final Response = await get(
      Uri.parse(baseUrl + "jobs/list-all"),
      headers: {
        'contentType': 'application/json',
        "Authorization": "Bearer $token"
      },
    );

    if (Response.statusCode == 200) {
      var data = json.decode(Response.body);
      JobList = data["data"];
      update();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadJoblist();
    loadUser();
    loadCollectionPoints();
  }
}

