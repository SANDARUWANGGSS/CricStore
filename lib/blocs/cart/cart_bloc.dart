import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cric_store/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'cart_event.dart';
part 'cart_state.dart';

// class CartBloc extends Bloc<CartEvent, CartState> {
//   CartBloc() : super(CartLoading()) {
//     on<LoadCart>(_onLoadCart);
//     on<AddProduct>(_onAddProduct);
//     on<RemoveProduct>(_onRemoveProduct);
//   }

//   void _onLoadCart(event, Emitter<CartState> emit) async {
//     emit(CartLoading());
//     try{
//       await Future<void>.delayed(const Duration(seconds: 1));
//       emit(CartLoaded());
//     }catch(_)
//     {
//       emit(CartError());
//     }
//   }
//   void _onAddProduct(event, Emitter<CartState> emit) {
//     final state = this.state;
//     if(state is CartLoaded)
//     {
//       try
//       {
//         emit(
//           CartLoaded(
//             cart: Cart(
//               products: List.from(state.cart.products)..add(event.product),
//               ),
//           ),
//         );
//       }on Exception{
//         emit(CartError());
//       }
//     }
//   }
//   void _onRemoveProduct(event, Emitter<CartState> emit) {
//     final state = this.state;

//     if(state is CartLoaded)
//     {
//       try
//       {
//         emit(
//           CartLoaded(
//             cart: Cart(
//               products: List.from(state.cart.products)..remove(event.product),
//               ),
//           ),
//         );
//       }on Exception{
//         emit(CartError());
//       }
//     }
//   }
// }

//   void _onCartStarted(CartStarted event, Emitter<State> emit)
//   {

//   }
// }


// class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
//   AuthRepo authRepo;
//   @override
//   ProfileBloc(ProfileState initialState, {required this.authRepo})
//       : super(ProfileLoading()) {
//     on<FetchProfile>((event, emit) async {
//       return await fetchProfileEvent(event, emit);
//     });
//   }

//   Future<void> fetchProfileEvent(
//       FetchProfile event, Emitter<ProfileState> emit) async {
//     log("$event", name: "eventToState");

//     emit(ProfileLoading());
//     try {
//       await authRepo.getProfileCall().then(
//         (value) {
//           log("$value", name: 'FetchProfile');
//           if (value != 'failed') {
//             emit(ProfileLoaded(userData: userProfileModelFromJson(value)));
//           } else {
//             emit(ProfileLoaded(userData: null));
//           }
//         },
//       );
//     } catch (e) {
//       log("$e", name: "ProfileBloc : FetchProfile");
//       emit(ProfileError());
//     }
//   }
// } 



// class CartBloc extends Bloc<CartEvent, CartState> {
//   CartBloc() : super(CartLoading()) ;

//   @override
//   Stream<CartState> mapEventToState(
//     CartEvent event,
//     )async*{
//     if(event is CartStarted)
//     {
//       yield* _mapCartStartedToState();
//     }
//     else if(event is CartProductAdded)
//     {
//       yield* _mapCartProductAddedToState(event, state);
//     }
//     else if(event is CartProductRemoved)
//     {
//       yield* _mapCartProductRemovedToState(event, state);
//     }
//   }

//   Stream<CartState> _mapCartStartedToState() async*{
//     yield CartLoading();
//     try{
//       await Future<void>.delayed(Duration(seconds: 1));
//     }catch(_) {}
//   }

//   Stream<CartState> _mapCartProductAddedToState(
//     CartProductAdded event, CartState state) async*{
//       if(state is CartLoaded)
//       {
//         try{
//           yield CartLoaded(
//             cart: Cart(
//               products: List.from(state.cart.products)..add(event.product)
//             ),
//           );
//         }catch(_) {}
//       }
//     }

//   Stream<CartState> _mapCartProductRemovedToState(
//     CartProductRemoved event, CartState state) async*{
//       if(state is CartLoaded)
//       {
//         try{
//           yield CartLoaded(
//             cart: Cart(
//               products: List.from(state.cart.products)..remove(event.product)
//             ),
//           );
//         }catch(_) {}
//       }
//     }


// }
