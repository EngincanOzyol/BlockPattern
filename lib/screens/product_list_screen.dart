

import 'package:blocpattern/Bloc/cart_bloc.dart';
import 'package:blocpattern/Bloc/product_bloc.dart';
import 'package:blocpattern/models/cart.dart';
import 'package:flutter/material.dart';

class productListScreen extends StatelessWidget {
  const productListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(actions: [
    IconButton(onPressed: (){Navigator.pushNamed(context,'cart');}, icon: Icon(Icons.shopping_cart)),
    ]),
    body: buildProductList(),
    );
  }

  buildProductList() {
    return StreamBuilder(
        initialData: ProductBlock.getAll(),
        stream: ProductBlock.getStream,
        builder:(context,snapshot){
          return snapshot.data.length>0? buildProductlistItems(snapshot):Center(child: Text('hata var'),);
        }
    );
  }

  buildProductlistItems(AsyncSnapshot snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.length,

        itemBuilder: (context, index){
      var list=snapshot.data;
      return ListTile(title: Text(list[index].name),
      subtitle: Text(list[index].price.toString()),
        trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed:(){
          cartbloc.addToCard(cart(list[index], 1));
        }

        ),
      );
    });
  }


}
