import 'package:carousel_slider/carousel_slider.dart';
import 'package:cric_store/blocs/cart/cart_bloc.dart';
import 'package:cric_store/blocs/wishlist/wishlist_bloc.dart';
import 'package:cric_store/models/models.dart';
import 'package:cric_store/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ProductScreen(product: product),
    );
  }

  final Product product;

  const ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: product.name),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Container(
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  BlocBuilder<WishlistBloc, WishlistState>(
                    builder: (context, state) {
                      return IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          context
                              .read<WishlistBloc>()
                              .add(AddWishlistProduct(product));

                          final snackBar = SnackBar(
                              content: Text('Added to Your Wishlist!'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      );
                    },
                  ),
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {
                          context
                            .read<CartBloc>()
                            .add(CartProductAdded(product));
                            Navigator.pushNamed(context, '/cart');
                        },
                        child: Text('Add To Cart',
                            style: Theme.of(context).textTheme.headline3!),
                      );
                    },
                  )
                ]),
          ),
        ),
        body: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: [
                HeroCarouselCard(
                  product: product,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    alignment: Alignment.bottomCenter,
                    color: Colors.black.withAlpha(50),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width - 10,
                    height: 50,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              '${product.price} LKR',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: Colors.white),
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ExpansionTile(
                initiallyExpanded: true,
                title: Text(
                  'Product Information',
                  style: Theme.of(context).textTheme.headline3,
                ),
                children: [
                  ListTile(
                    title: Text(
                      'Free Shipping On All Orders In Victoria. Sydney Thunder Star Jason Sangha Bat Fitting At Cricket Performance Lab. 10% Discount Codes. First Class Service. Brands: Kookaburra, Grey-Nicolls, Masuri, New Balance, Aero, GM - Gunn & Moore, Adidas.',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ExpansionTile(
                title: Text(
                  'Delivery Information',
                  style: Theme.of(context).textTheme.headline3,
                ),
                children: [
                  ListTile(
                    title: Text(
                      'Island wide free shipping',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
            ),
          ],
        )
        // HeroCarouselCard(product: product,),
        );
  }
}
