import 'package:equatable/equatable.dart';

class Product extends Equatable
{
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;


  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular
  });



  @override
  List<Object?> get props => [
    name,
    category,
    imageUrl,
    price,
    isRecommended,
    isPopular
  ];

  static List<Product> products = [
    Product(name: 'Kookaburra Bat',
     category: 'Bat', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fbat.pnge9210af7-007f-495f-bc49-650e2cb4e437?alt=media&token=2975bda0-a4b4-4bf8-bc96-97070d03207a', 
     price: 28900 , 
     isRecommended: true, 
     isPopular: false),

      Product(name: 'Kookaburra Bat',
     category: 'Bat', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fbat.pnge9210af7-007f-495f-bc49-650e2cb4e437?alt=media&token=2975bda0-a4b4-4bf8-bc96-97070d03207a', 
     price: 28900 , 
     isRecommended: true, 
     isPopular: false),

      Product(name: 'Kookaburra Bat',
     category: 'Bat', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fbat.pnge9210af7-007f-495f-bc49-650e2cb4e437?alt=media&token=2975bda0-a4b4-4bf8-bc96-97070d03207a', 
     price: 28900 , 
     isRecommended: true, 
     isPopular: false),

      Product(name: 'Kookaburra Bat',
     category: 'Bat', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fbat.pnge9210af7-007f-495f-bc49-650e2cb4e437?alt=media&token=2975bda0-a4b4-4bf8-bc96-97070d03207a', 
     price: 28900 , 
     isRecommended: false, 
     isPopular: true),

      Product(name: 'Kookaburra Bat',
     category: 'Bat', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fbat.pnge9210af7-007f-495f-bc49-650e2cb4e437?alt=media&token=2975bda0-a4b4-4bf8-bc96-97070d03207a', 
     price: 28900 , 
     isRecommended: false, 
     isPopular: true)

  ];

  }