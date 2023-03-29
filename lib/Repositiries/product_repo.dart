import 'dart:convert';
import 'package:http/http.dart';

import 'package:prroduct_api_flutter/Models/product_model.dart';

class ShowAllproducts {
  Future<List<AllProduct>> getAllproducts() async {
    try {
      Uri url = Uri.parse("https://dummyjson.com/products");
      final response = await get(url);
      String resBody = response.body;

      final json = jsonDecode(resBody);
      List produts = json['products'];

      List<AllProduct> AllProduts =
          produts.map((json) => AllProduct.fromJson(json)).toList();
      return AllProduts;
    } catch (error) {
      return Future.error(error);
    }
  }
}
