import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../Shared/Constant/strings.dart';

class CategoriesWebServices {
  late Dio dio;

  CategoriesWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCategories() async {
    try {
      Response response = await dio.get("categoris");//الكلمة الي بعد  Base URL
      print(response.data.toString());
      return response.data;
    } catch (error) {
      print(error.toString());
      return [];
    }
  }
}
