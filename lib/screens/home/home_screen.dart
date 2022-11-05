import 'package:carousel_slider/carousel_slider.dart';
import 'package:cric_store/models/category_model.dart';
import 'package:cric_store/widgets/widgets.dart';
import 'package:flutter/material.dart';




class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  static Route route()
  {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }


  @override
  Widget build(BuildContext context) {
    

    

    return Scaffold(
      appBar: CustomAppBar(title:'Online Cricket Store'),
      bottomNavigationBar: CustomNavBar(),
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.5,
            viewportFraction: 0.9,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            
          ), items: Category.Categories.map((category) => HeroCarouselCard(category: category)).toList(),
          

        )
      ),
    );
  }
}
