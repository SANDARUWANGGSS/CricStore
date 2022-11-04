import 'package:cric_store/widgets/widgets.dart';
import 'package:flutter/material.dart';




class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

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
    );
  }
}
