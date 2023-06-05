import 'package:flutter/material.dart';
import 'package:flutter_testing/pages/products_list_page/widgets/product_list_widget.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../models/product_list_model.dart';



class ProductsListPage extends StatelessWidget {
  const ProductsListPage({super.key});


  Future< List<ProductListModel>> getProductsList()async {
      try{  
        List<ProductListModel> items = [];
          final url = Uri.parse('https://kaiduapis.azurewebsites.net/api/productMasters/productSearch');
          final body = json.encode(
            {
              "farmId": "",
              "gender": "",
              "breedType": "",
              "breed": "",
              "talent": "",
              "age": "", 
              "ageType": "", 
              "priceFrom": "", 
              "priceTo": "", 
              "province": "",
              "promotion": "",
              "searchType": "", 
              "searchText": "", 
              "shopId": "", 
              "productName": "",
              "sellerName": "",
              "productType": "2165"
          });
          final headers = {
              'Content-Type': 'application/json',
            };
             final response = await http.post(url, body: body , headers: headers);
          if (response.statusCode == 200) {
            final parsedData = json.decode(response.body);
             if (parsedData is List<dynamic>) {
                  items = parsedData.map((data) {
                    Map<String, dynamic> itemMap = Map<String, dynamic>.from(data as Map);
                    return ProductListModel.fromJson(itemMap);
                  }).toList();
            }

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
        title: Text("E commerce "),
      ),
      backgroundColor: const Color.fromARGB(255, 228, 224, 220),
      body: FutureBuilder(
        future: getProductsList() ,
        builder: (context , snapshot ) {
          if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(
                child: CircularProgressIndicator(color: Colors.black,),
              );
          }else if(snapshot.hasData){
            final itemsList = snapshot.data;
            if(itemsList != null){
              return ListView.builder(
                itemCount: itemsList.length,
                itemBuilder: (context , index){
                  return ProductListWidget( product :  itemsList[index]);
                } ,
              );
            }
        }else if(snapshot.hasError){
         print(snapshot.error.toString());
          return Text(snapshot.hasError.toString());
        }
     
          return const  Text("some thing went wrong please try after some time");
        

        }
      ),
    );
  }
}