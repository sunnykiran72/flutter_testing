import 'package:flutter/material.dart';
import 'package:flutter_testing/models/product_list_model.dart';
import 'package:flutter_testing/pages/products_page/products_page.dart';

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
      builder: (BuildContext context) => ProductsPage(product : product)),
    ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              decoration: const BoxDecoration(
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(12) , topRight: Radius.circular(12) ),
                image:  DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://images.pexels.com/photos/674574/pexels-photo-674574.jpeg?auto=compress&cs=tinysrgb&w=600"))
              ), 
            ),
            Padding(
              padding: const  EdgeInsets.symmetric(horizontal: 12 ,vertical: 3),
              child: Text(product.productName ?? "" , textAlign: TextAlign.left,  style: const TextStyle(fontSize: 16 , height: 1.8 , fontWeight: FontWeight.bold , color: Colors.black87 ), )),
            Padding(
              padding: const  EdgeInsets.symmetric(horizontal: 12 ,vertical: 14),
              child: Row(
                children: [
                  Text( "Age :  ${product.age}") , 
                  const Spacer(),
                  Text("Gender : ${product.gender}"),
                  // const  Spacer(),
                  // Text( "Date : ${ DateTime.parse(product.dateOfBirth!).toString().substring(0 ,10) } " ),
                ],
              ),

            ) ,
            Padding(
              padding: const EdgeInsets.only( left: 8 , right: 12 , bottom: 17),
              child: Text( "Discount : ${product.discount} " , textAlign: TextAlign.right, style: const  TextStyle(fontWeight: FontWeight.bold , fontSize: 14), ),
            )
          ],
        ),
      ),
    
    );
  }
}