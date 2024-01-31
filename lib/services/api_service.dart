import 'package:dio/dio.dart';
import 'package:flutter_assigment07/models/product_model.dart';
import 'package:flutter_assigment07/utils/logger.dart';

class ApiService {
  final dio = Dio();

  Future<List<ProductElement>> getProducts() async {
    try {
      final result = await dio.get('https://dummyjson.com/products');
      logger.f(result.data['products']);
      final List<ProductElement> products = List<ProductElement>.from(
        (result.data['products'] as List<dynamic>)
            .map((productJson) => ProductElement.fromJson(productJson)),
      );
      return products;
    } catch (err) {
      logger.e(err);
      return [];
    }
  }
}
