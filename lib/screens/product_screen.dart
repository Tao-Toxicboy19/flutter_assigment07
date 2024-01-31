import 'package:flutter/material.dart';
import 'package:flutter_assigment07/models/product_model.dart';
import 'package:flutter_assigment07/services/api_service.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ProductElement>>(
        future: apiService.getProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // If the Future is still running, show a loading indicator
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            // If the Future completed with an error, display the error message
            return Text('Error: ${snapshot.error}');
          } else {
            // If the Future completed successfully, display the data
            List<ProductElement> products = snapshot.data ?? [];
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(products[index].title),
                  // Add other widgets to display other information about the product
                );
              },
            );
          }
        },
      ),
    );
  }
}
