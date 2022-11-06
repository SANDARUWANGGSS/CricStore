import 'package:cric_store/blocs/wishlist/wishlist_bloc.dart';
import 'package:cric_store/config/app_router.dart';
import 'package:cric_store/config/theme.dart';
import 'package:cric_store/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers : [
        BlocProvider(create: (_)=> WishlistBloc()..add(StartWishlist())),
      ],
      child: MaterialApp(
        title: 'Online Cricket Store',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
