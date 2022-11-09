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
     category: 'Branded Bat', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fbat1.jpg79b44e52-9048-49b4-8458-f5bda6476722?alt=media&token=9c20c699-76b4-43f7-9e66-3979b93a35cf', 
     price: 32500 , 
     isRecommended: true, 
     isPopular: false),

      

      Product(name: 'Kookaburra Bat',
     category: 'Branded Bat', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fbat2.jpgef6c858a-3bd7-4752-9b81-3d393e6e72bb?alt=media&token=80d5b593-36dc-4fd6-9c31-3cddf0d052ab', 
     price: 34200 , 
     isRecommended: true, 
     isPopular: false),

      Product(name: 'MRF Bat',
     category: 'Branded Bat', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fbat4.jpg4cd823ad-921a-424e-a12b-ae7d21d8976c?alt=media&token=79628253-03b3-4d64-99bb-23d1dabc1321', 
     price: 28900 , 
     isRecommended: true, 
     isPopular: false),

      Product(name: 'SF Bat',
     category: 'Branded Bat', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fbat5.jpg9edb54f3-b012-45b6-a461-516845f5d15e?alt=media&token=6facfc1a-be9e-4279-a0b2-96abbb7231c2', 
     price: 42000 , 
     isRecommended: false, 
     isPopular: true),

     Product(name: 'DSC Head gear',
     category: 'Head Gear', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fh1.jpg20d547c8-7e41-426a-9b38-8accc74de930?alt=media&token=9a72a97b-d250-449c-8b1e-0d66ae2e99f0', 
     price: 12500 , 
     isRecommended: false, 
     isPopular: true),

     Product(name: 'CA Head gear',
     category: 'Head Gear', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fh2.jpge50f3a6c-c5b4-4e19-8cc4-6f601f8d4594?alt=media&token=f87dfde2-d96e-488f-8117-f8a6d249ec4b', 
     price: 10800 , 
     isRecommended: true, 
     isPopular: false),

     Product(name: 'Kookaburra Head gear',
     category: 'Head Gear', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fh2.jpge50f3a6c-c5b4-4e19-8cc4-6f601f8d4594?alt=media&token=f87dfde2-d96e-488f-8117-f8a6d249ec4b', 
     price: 15000 , 
     isRecommended: true, 
     isPopular: false),

     Product(name: 'Nike Shoes',
     category: 'Cricket Shoes', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fs1.jpg7440f5d6-c8fc-4559-bfc5-db0550ba58a9?alt=media&token=af36fe65-7d4c-4c3f-af67-083756ee0e03', 
     price: 17000 , 
     isRecommended: true, 
     isPopular: false),

     Product(name: 'Kookaburra Shoes',
     category: 'Cricket Shoes', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fs1.jpg7440f5d6-c8fc-4559-bfc5-db0550ba58a9?alt=media&token=af36fe65-7d4c-4c3f-af67-083756ee0e03', 
     price: 17000 , 
     isRecommended: true, 
     isPopular: false),

     Product(name: 'Adidas Shoes',
     category: 'Cricket Shoes', 
     imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fs2.jpgbe6ddba4-05a0-4f54-803c-2249855604d3?alt=media&token=265279cb-9dbb-411d-9f75-4256b85f4a49', 
     price: 12500 , 
     isRecommended: false, 
     isPopular: true),

  ];

  }