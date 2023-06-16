
import 'package:flutter/material.dart';
import 'package:flutter_testing/models/product_list_model.dart';

import 'prodcuts_data.dart';

class ProductsPage extends StatelessWidget {
  final ProductListModel product;
  const ProductsPage({super.key , required this.product });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.categoryName),
      ),
        body: ProductsData( data : product),
    );
  }
}