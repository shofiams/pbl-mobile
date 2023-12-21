import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../models/user_data_list.dart';
import 'package:project/models/user_data_model.dart';
import '../utils/shared_prefs.dart';

class HomeController extends GetxController {
  final userDataInfo = UserInfoModel(email: '').obs;

  getUserData() async {
    SharedPrefs prefs = SharedPrefs();
    var userInfo = json.decode(await prefs.getUserData());

    UserInfoModel(email: userInfo['email']);
    if (kDebugMode) {
      print(
          "Home User details: $userInfo \n Home User Name: ${userInfo['name']}");
    }

    /*  var user=jsonEncode(userInfo);
    Data.fromJson(jsonEncode(userInfo))*/
    //Map<String,dynamic> map =jsonEncode(userInfo);
    // print(map.);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUserData();
  }
}
