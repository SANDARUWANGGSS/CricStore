import 'package:cric_store/models/product_model.dart';
import 'package:equatable/equatable.dart';

class Cart extends Equatable
{
  final List<Product> products;

  const Cart({this.products = const<Product>[]});

  double get subtotal => 
      products.fold(0, (total, current) => total+current.price);


  double deliveryFee(subtotal)
  {
    if(subtotal >= 10000.0)
    {
      return 0.0;
    }
    else{
      return 800.0;
    }
  }

  String freeDelivery(subtotal)
  {
    if(subtotal>=10000.0)
    {
      return 'You Have Free Delivery';
    }
    else
    {
      double missing = 10000.0-subtotal;

     return 'Add \$${missing.toStringAsFixed(2)} For Free Delivery';
    }
  }

  double total(subtotal,deliveryFee)
  {
    return subtotal+deliveryFee(subtotal);
  }

  String get subtotalString => subtotal.toStringAsFixed(2);

  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);

  String get delveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);

  String get freeDeliveryString => freeDelivery(subtotal);



  @override
  List<Object?> get props => [products];
  // static List<Product> products = [
    
  //     Product(name: 'Kookaburra Bat',
  //    category: 'Branded Bat', 
  //    imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fbat2.jpgef6c858a-3bd7-4752-9b81-3d393e6e72bb?alt=media&token=80d5b593-36dc-4fd6-9c31-3cddf0d052ab', 
  //    price: 34200 , 
  //    isRecommended: true, 
  //    isPopular: false),

      

  //     Product(name: 'SF Bat',
  //    category: 'Branded Bat', 
  //    imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fbat5.jpg9edb54f3-b012-45b6-a461-516845f5d15e?alt=media&token=6facfc1a-be9e-4279-a0b2-96abbb7231c2', 
  //    price: 42000 , 
  //    isRecommended: false, 
  //    isPopular: true),

  //     Product(name: 'Adidas Shoes',
  //    category: 'Cricket Shoes', 
  //    imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fs2.jpgbe6ddba4-05a0-4f54-803c-2249855604d3?alt=media&token=265279cb-9dbb-411d-9f75-4256b85f4a49', 
  //    price: 12500 , 
  //    isRecommended: false, 
  //    isPopular: true),

  //     Product(name: 'DSC Head gear',
  //    category: 'Head Gear', 
  //    imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fh1.jpg20d547c8-7e41-426a-9b38-8accc74de930?alt=media&token=9a72a97b-d250-449c-8b1e-0d66ae2e99f0', 
  //    price: 12500 , 
  //    isRecommended: false, 
  //    isPopular: true),



     

  // ];
  
  
}