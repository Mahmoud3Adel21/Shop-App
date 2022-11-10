// ignore_for_file: missing_required_param

import 'dart:convert';

import 'package:http/http.dart';
import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProduct() async {
    Response response =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
