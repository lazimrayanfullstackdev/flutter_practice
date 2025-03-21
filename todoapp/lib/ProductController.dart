import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todoapp/utils/urls.dart';

import 'model/product.dart';

class ProductController {
  List<Data> products = [];

  Future<void> fetchProduct() async {
    final response = await http.get(Uri.parse(Urls.readProduct));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      productModel model = productModel.fromJson(data);
      products = model.data ?? [];
    }
  }

    Future<void> createProduct(String name, String img, String code,
        int qty, int price, int totalPrice) async {
      final response = await http.post(Uri.parse(Urls.createProduct),
          headers: {
            'Content-Type': 'application/json'},
          body: jsonEncode({
            "ProductName": name,
            "ProductCode": code,
            "Img": img,
            "Qty": qty,
            "UnitPrice": price,
            "TotalPrice": totalPrice
          })
      );
      if (response.statusCode == 201) {
        await fetchProduct();
      }
    }

  Future<void> updateProduct(String id, String name, String img, String code, int qty, int price, int totalPrice) async {
    final response = await http.post(Uri.parse(Urls.createProduct),
        headers: {
          'Content-Type': 'application/json'},
        body: jsonEncode({
          "ProductName": name,
          "ProductCode": code,
          "Img": img,
          "Qty": qty,
          "UnitPrice": price,
          "TotalPrice": totalPrice
        })
    );
    if (response.statusCode == 201) {
      await fetchProduct();
    }
  }

  Future<bool> deleteProduct(String id) async {
    final response = await http.get(Uri.parse(Urls.deleteProduct(id)));
    if (response.statusCode == 200) {
      return true;
    }else{
      return false;
    }
  }


  }