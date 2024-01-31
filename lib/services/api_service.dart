import 'package:dio/dio.dart';
import 'package:flutter_assigment07/models/product_model.dart';
import 'package:flutter_assigment07/utils/logger.dart';

class ApiService {
  final dio = Dio();

  Future<List<ProductElement>> getProducts() async {
    try {
      final result = await dio.get('https://dummyjson.com/products');
      logger.f(result.data);
      final Product products = productFromJson(result.data);
      return products.products;
    } catch (err) {
      logger.e(err);
      return [];
    }
  }
}
