import 'package:flutter/material.dart';
import 'package:flutter_testing/models/product_list_model.dart';

import '../../products_page/products_page.dart';

class ProductListWidget extends StatelessWidget {
  final ProductListModel product;
  const ProductListWidget({ required this.product , super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15 , horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow:  const [
          BoxShadow(
            offset: Offset(2, 2),
            color: Color.fromARGB(255, 143, 137, 137),
            blurRadius: 3
          ),
        ]
      ),
      child: InkWell(
      onTap: () => Navigator.of(context).push( MaterialPageRoute(
      builder: (BuildContext context) => ProductsPage(product : product))  ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                 borderRadius: const BorderRadius.only(topLeft: Radius.circular(12) , topRight: Radius.circular(12) ),
                image:  DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(product.image))
              ), 
            ),
            Padding(
              padding: const  EdgeInsets.symmetric(horizontal: 10 ,vertical: 5),
              child: Text(product.categoryName , textAlign: TextAlign.left,  style: const TextStyle(fontSize: 16 , height: 1.8 , fontWeight: FontWeight.bold , color: Colors.black87 ), )),
              Padding(
              padding: const EdgeInsets.only( left: 10),
              child: Text(product.description  , textAlign: TextAlign.right, style: const  TextStyle(fontWeight: FontWeight.bold , fontSize: 14), ),
            ),
            Padding(
              padding: const  EdgeInsets.symmetric(horizontal: 10 , vertical: 10 ),
              child: RichText( 
                   text : TextSpan( text: "price : "  , 
                  style: const  TextStyle(color: Colors.black , fontWeight: FontWeight.bold ),
                   children: [ 
                      TextSpan(text: product.price.toString() , style: const  TextStyle(color:Color.fromARGB(255, 4, 86, 6) , fontWeight: FontWeight.bold ) )
              ] ) )  

            ) ,
          ],
        ),
      ),
    
    );
  }
}