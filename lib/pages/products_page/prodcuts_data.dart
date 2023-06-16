
import 'package:flutter/material.dart';
import '../../models/product_list_model.dart';

class ProductsData extends StatelessWidget {
  final ProductListModel data;
  const ProductsData({super.key ,  required this.data});

  Widget customTile(String name , String value){
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black) ,
            borderRadius: BorderRadius.circular(12)
            
          ),
          child: ListTile(
            minVerticalPadding: 0,
            contentPadding: const  EdgeInsets.symmetric(horizontal: 16 ),
             title: Text(name , style: const  TextStyle(color: Colors.black87 , fontSize: 15 , fontWeight: FontWeight.bold),),
             trailing: Text(value ,  style: const  TextStyle(color: Color.fromARGB(255, 67, 145, 248) , fontSize: 14 , fontWeight: FontWeight.w600), ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
              height: 150,
              margin:const  EdgeInsets.all(12),
              decoration: BoxDecoration(
                 borderRadius:  BorderRadius.circular(12) ,
                image:  DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage( data.image))
              ), 
            ),
                customTile("Availability", data.availability),
                customTile("Product Type", data.categoryType),
                customTile("Description", data.description),
                customTile("Price", data.price.toString()),

               
            ],
          ),
        ),
    );
  }
}