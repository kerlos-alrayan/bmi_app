import 'dart:convert';


import 'package:dio/dio.dart';
import 'package:quiz_app/helper/api.dart';

class AllProductsService {
  Future<List<String>> getAllProducts() async {
    Response response =
    await Api().get(uri: 'https://fakestoreapi.com/products/categories');

    List<dynamic> data = response.data;
    List<String> categories = List<String>.from(data);
    print(categories);
    return categories;
  }
}

void main() {
  AllProductsService().getAllProducts();
}
