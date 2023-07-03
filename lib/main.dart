import 'package:blocpattern/screens/cart_screen.dart';
import 'package:blocpattern/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
         '/':(BuildContext context)=>productListScreen(),
        'cart':(BuildContext context)=>cartScreen()
      },
      initialRoute: '/',


    );
  }
}
