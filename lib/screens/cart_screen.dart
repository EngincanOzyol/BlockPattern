import 'package:blocpattern/Bloc/cart_bloc.dart';
import 'package:blocpattern/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cartScreen extends StatelessWidget {
  const cartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sepet'),
      ),
      body: StreamBuilder(
        initialData: cartbloc.getAll(),
        stream: cartbloc.getStream,
        builder: (context,snapshot){
          return buildCart(snapshot);
        },
      ),
    );
  }

  Widget buildCart(AsyncSnapshot snapshot) {
    return ListView.builder(
        itemCount: snapshot.data.length,
        itemBuilder: (context,index){
          var list=snapshot.data;
          return ListTile(
            title: Text(list[index].Products.name),
            subtitle: Text(list[index].Products.price.toString()),
            trailing:IconButton(onPressed:(){
              cartbloc.removeToCard(list[index]);
            }, icon: Icon(Icons.remove_shopping_cart)),
          );

    });
  }
}
