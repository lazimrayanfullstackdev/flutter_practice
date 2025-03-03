import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todoapp/utils/urls.dart';

class ProductController{
  List products = [];
  Future<void> fetchProduct () async{
    final response = await http.get(Uri.parse(Urls.readProduct));
    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
      products = data['data'];
    }
}
}