import 'package:flutter/material.dart';
import 'package:flutter_testing/pages/products_list_page/widgets/product_list_widget.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../models/product_list_model.dart';



class ProductsListPage extends StatelessWidget {
  const ProductsListPage({super.key});


  Future< List<ProductListModel>> getProductsList()async {
        List<ProductListModel> items = [];
        final url = Uri.parse('https://pfeqsoeas0.execute-api.us-east-1.amazonaws.com/v1/beastxd');
        final headers = {
              'Content-Type': 'application/json',
        };
        try{
            final response = await http.get( url , headers: headers ) ;
            print(response);
            if (response.statusCode == 200) {
                final parsedData = json.decode(response.body);
                print(parsedData);
                final data =Map<String, dynamic>.from(parsedData as Map) ;
                items = data.values.map((product) {
                        Map<String, dynamic> itemMap = Map<String, dynamic>.from(product as Map);
                        return ProductListModel.fromJson(itemMap);
                      }).toList();
                }
            }catch(e){
                  print(e);
            }
          
        return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text( " Beast bytes"),
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