import 'package:cric_store/blocs/cart/cart_bloc.dart';
import 'package:cric_store/models/cart_model.dart';
import 'package:cric_store/models/models.dart';
import 'package:cric_store/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Cart'),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Container(
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {},
                    child: Text('Go To Checkout',
                        style: Theme.of(context).textTheme.headline3!),
                  )
                ]),
          ),
        ),
        body: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            
            if(state is CartLoaded)
            {
              return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(state.cart.freeDeliveryString,
          style: Theme.of(context).textTheme.headline5,
          ),
          ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(),
                  elevation: 0,
                ),
                child: Text(
                  'Add More Items',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white,
                  ),
                ),
                )
                ],),
                SizedBox(height: 10,),
                
                SizedBox(height: 390,
                  child: ListView.builder(
                    itemCount: state.cart.products.length,
                    itemBuilder: (context, index)
                    {
                      return CartProductCard(product: state.cart.products[index]);
                    },
                    ),
                ),
                
              ],
            ),
            

            Column(
              children: [
                  // Devider(thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sub Total',style: Theme.of(context).textTheme.headline5!,),
                      Text('\$${state.cart.subtotal} LKR',style: Theme.of(context).textTheme.headline5!)
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Delivery Fee',style: Theme.of(context).textTheme.headline5!,),
                    Text('\$${state.cart.delveryFeeString} LKR',style: Theme.of(context).textTheme.headline5!)
                ],
              ),
              

                ],
              ),
            ),
            Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                  color: Colors.black.withAlpha(50),
                ),
                ),
                 Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(5.0),
                  height: 50,
                  decoration: BoxDecoration(
                  color: Colors.black.withAlpha(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color:Colors.white)
                        ,),
                        Text(
                        '\$${state.cart.totalString}',
                        style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color:Colors.white)
                        ,)
                        
                      
                  ],
                  ),
                ),
                ),
              ],
              
              )
              ],
            ),

            
          ],
        ),
      );
            }
            if(state is CartLoading)
            {
              return Center(
                child: CircularProgressIndicator(),
              );
              // return Text('Sandaruwan');
            }
            else
            {
              return Text('Something went wrong');
            }
          },
        ));
  }
}
