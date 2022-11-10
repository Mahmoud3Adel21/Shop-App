// ignore_for_file: missing_required_param

import 'dart:convert';

import 'package:http/http.dart';
import 'package:storeapp/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    Response response =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    List<dynamic> data = jsonDecode(response.body);
    return data;
  }
}
