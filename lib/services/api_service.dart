import 'package:dio/dio.dart';
import 'package:flutter_assigment07/utils/logger.dart';

class ApiService {
  final dio = Dio();

  getProducts() async {
    try {
      final result = await dio.get('https://dummyjson.com/products');
      logger.f(result.data);
    } catch (err) {
      logger.e(err);
    }
  }
}
