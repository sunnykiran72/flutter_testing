
import 'package:flutter/material.dart';
import 'package:flutter_testing/models/product_list_model.dart';
import 'package:flutter_testing/models/products_model.dart';
import 'package:flutter_testing/pages/products_page/prodcuts_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductsPage extends StatelessWidget {
  final ProductListModel product;
  const ProductsPage({super.key , required this.product });


  Future< ProductModel?> getProductsList()async {
      try{  
         ProductModel? items;
          final url = Uri.parse('https://kaiduapis.azurewebsites.net/api/ProductMasters/1140/1179/th?ProductID=""&sellerID=""&language=""');
          final headers = {
              'Content-Type': 'application/json',
            };
          final response = await http.get(url, headers: headers);
          
          if (response.statusCode == 200) {
            final parsedData = json.decode(response.body);
            Map<String, dynamic> itemsData = Map<String, dynamic>.from(parsedData as Map);
              items = ProductModel.fromJson(itemsData);
          } else {
            print(response.reasonPhrase);
            print('POST request failed with status: ${response.statusCode}');
          }
   
        return items;

      }catch(e){
        print(e);
          rethrow;
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.productName ?? ""),
      ),
        body:  FutureBuilder(
        future: getProductsList() ,
        builder: (context , snapshot ) {
          if(snapshot.connectionState == ConnectionState.waiting){
              return const  Center(
                child: CircularProgressIndicator(color: Colors.black,),
              );
          }else if(snapshot.hasData){
            final itemsList = snapshot.data;
            if(itemsList != null){
              return ProductsData( data : itemsList);
            }
        }else if(snapshot.hasError){
          print(snapshot.error.toString());
          return Text(snapshot.hasError.toString());
        }
     
      return Text("some thing went wrong please try after some time");
        

        }
      ),
    );
  }
}