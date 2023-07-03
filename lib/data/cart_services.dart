import '../models/cart.dart';

class cartServis{
  static List<cart> cartItem=[];

  static cartServis _singleton=cartServis._internal();


  factory cartServis(){
    return _singleton;
  }

  cartServis._internal();

  static void addCart(cart  item){
    cartItem.add(item);

  }
  static void removeCart(cart  item){
    cartItem.remove(item);

  }
  static List<cart> getCart(){
    return cartItem;

  }
}