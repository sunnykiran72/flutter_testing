
import 'package:flutter/material.dart';
import 'package:flutter_testing/models/products_model.dart';

class ProductsData extends StatelessWidget {
  final ProductModel data;
  const ProductsData({super.key ,  required this.data});

  Widget customTile(String name , String value){
        return ListTile(
          minVerticalPadding: 0,
          contentPadding: const  EdgeInsets.symmetric(horizontal: 16 ),
           title: Text(name , style: const  TextStyle(color: Colors.black87 , fontSize: 15 , fontWeight: FontWeight.bold),),
           trailing: Text(value ,  style: const  TextStyle(color: Color.fromARGB(255, 67, 145, 248) , fontSize: 14 , fontWeight: FontWeight.w600), ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Container(
        alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                customTile("Product Name", data.productMaster?.productName ?? ""),
                customTile("Product Type", data.productMaster?.productType.toString() ?? ""),
                customTile("Gender", data.productMaster?.gender.toString() ?? ""),
                customTile("Age", data.productMaster?.age.toString() ?? ""),
              const  Divider(
                height: 3,
                thickness: 3,
                indent: 10,
                endIndent: 10,
                ),
                customTile("Member Name", data.member?.firstName ?? ""),
                customTile("About Us", data.member?.aboutUs ?? ""),
                customTile("Website Url", data.member?.website ?? ""),
                customTile("Created On", data.member?.createdOn ?? ""),
                const  Divider(
                height: 3,
                thickness: 3,
                indent: 10,
                endIndent: 10,
                ),
                // customTile("Product Name", data.productMaster?. ?? ""),
                // customTile("Product Name", data.productMaster?.productName ?? ""),
               
            ],
          ),
      ),
    );
  }
}