import '../models/product.dart';

class productServis{
  static List<product> products= [];

  static productServis _singleton=productServis._internal();//singleton bir sınıftan sadece bir nesne yaratılmasını garanti eder

  factory productServis(){
    return _singleton;
  }

  productServis._internal();
  static List<product> getAll(){
    products.add(product(1, 'acer bilgisayar', 6000));
    products.add(product(2, 'hp bilgisayar', 7000));
    products.add(product(3, 'monster bilgisayar', 8000));
    products.add(product(4, 'delph bilgisayar', 9000));
    return products;
  }
}