import 'package:cric_store/models/category_model.dart';
import 'package:cric_store/models/models.dart';
import 'package:cric_store/screens/cart/cart_screen.dart';
import 'package:cric_store/screens/catalog/catalog_screen.dart';
import 'package:cric_store/screens/home/home_screen.dart';
import 'package:cric_store/screens/product/product_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/wishlist/wishlist_screen.dart';

class AppRouter
{
  static Route onGenerateRoute(RouteSettings settings)
  {
    print('This is route: ${settings.name}');

    switch(settings.name)
    {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      default:
        return _errorRoute();

    }
  }

  static Route _errorRoute()
  {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Error')),
      ),
    ); 
  }
}