import 'package:equatable/equatable.dart';

class Category extends Equatable{
  final String name;
  final String imageUrl;

  static var categories;

  const Category({
    required this.name,
    required this.imageUrl,
  });


  @override
  List<Object?> get props => [name, imageUrl];
  
  static List<Category> Categories = [
       Category(
        name: 'Welcome To CricStore',
        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fhome.pngb80bfcbc-9ff0-4b42-93d8-7013543a2ca7?alt=media&token=00a89ff6-ed17-4c58-a794-2bffc206fc35',
      ),
       Category(
        name: 'Shopping Now',
        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2FDeal.pnge43ca606-cfd4-47f3-86ab-a708427acf99?alt=media&token=eb26ea31-047c-4b4a-917a-e8f59363cd4d',
      ),
      Category(
        name: 'Branded Bat',
        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fbat.pnge9210af7-007f-495f-bc49-650e2cb4e437?alt=media&token=2975bda0-a4b4-4bf8-bc96-97070d03207a',
      ),
      Category(
        name: 'Head Gear',
        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fhelmet.pngdf56a30c-8bb9-470f-bcca-aeb9a915d32b?alt=media&token=2fd6ca2a-72bb-485e-8848-53e11b3fa559',
      ),
      Category(
        name: 'Cricket Shoes',
        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/petheaven-84307.appspot.com/o/PetHeaven%2Fshoes.pnga329fbff-1542-4194-901d-9832ab84dddd?alt=media&token=b97f5540-c254-4588-a48a-ff3715783a26',
      )
  ];
  
}

