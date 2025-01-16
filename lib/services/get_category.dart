import 'dart:convert';


import 'package:dio/dio.dart';
import 'package:quiz_app/helper/api.dart';
import 'package:quiz_app/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts({required String categoryName}) async {
    Response response =
    await Api().get(uri: 'https://fakestoreapi.com/products/category/$categoryName');

    List<dynamic> data = response.data;
    List<ProductModel> products = data.map((item) => ProductModel.fromJson(item)).toList();
    print(products);
    return products;
  }
}

void main() {
  //[electronics, jewelery, men's clothing, women's clothing]
  AllProductsService().getAllProducts(categoryName: 'electronics');
}
