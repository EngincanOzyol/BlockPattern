import 'dart:async';

import 'package:blocpattern/data/cart_services.dart';
import 'package:blocpattern/models/cart.dart';
import 'package:flutter/material.dart';

class cartBloc{
  final cartStreamcontrol=StreamController.broadcast();

  Stream get getStream => cartStreamcontrol.stream;

  void addToCard(cart item){
    cartServis.addCart(item);
    cartStreamcontrol.sink.add(cartServis.getCart());
  }

  void removeToCard(cart item){
    cartServis.removeCart(item);
    cartStreamcontrol.sink.add(cartServis.getCart());
  }

  List<cart> getAll(){
    return cartServis.getCart();

  }
}

final cartbloc=cartBloc();