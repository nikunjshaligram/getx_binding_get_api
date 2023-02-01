// ignore_for_file: non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_binding_get_api/data/models/productmodel.dart';

import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  User_Model? user_model;
  var isDataLoading = false.obs;

  @override
  void onInit() {
    getApi();
    super.onInit();
  }

  getApi() async {
    try {
      isDataLoading(true);
      http.Response response = await http.get(
          Uri.tryParse('http://dummyapi.io/data/v1/user')!,
          headers: {'app-id': '6218809df11d1d412af5bac4'});
      if (response.statusCode == 200) {
        //data successfully

        var result = jsonDecode(response.body);

        user_model = User_Model.fromJson(result);
      } else {
        ///error
      }
    } catch (e) {
      //log('Error while getting data is $e');
      print('Error while getting data is $e');
    } finally {
      isDataLoading(false);
    }
  }
}
