import 'dart:async';

import 'package:blocpattern/data/product_services.dart';
import 'package:blocpattern/models/product.dart';

class productBlock{
  final cartStreamcontrol=StreamController.broadcast();

  Stream get getStream => cartStreamcontrol.stream;
  List<product> getAll(){
    return productServis.getAll();

  }
}
final ProductBlock=productBlock();