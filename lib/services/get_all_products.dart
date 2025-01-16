import 'dart:convert';


import 'package:dio/dio.dart';
import 'package:quiz_app/helper/api.dart';
import 'package:quiz_app/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    Response response =
        await Api().get(uri: 'https://fakestoreapi.com/products');

    List<dynamic> data = response.data;
    List<ProductModel> productsList =
        data.map((item) => ProductModel.fromJson(item)).toList();

    print(productsList);
    return productsList;
  }
}

void main() {
  AllProductsService().getAllProducts();
}
