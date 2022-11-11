import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cric_store/models/models.dart';
import 'package:equatable/equatable.dart';

part 'cart_event.dart';
part 'cart_state.dart';

// class CartBloc extends Bloc<CartEvent, CartState> {
//   CartBloc() : super(CartLoading()) {
//     on<CartEvent>((event, emit) async {
//       if(event is CartStarted)
//       {
        
//       }
//     });
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



class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading()) ;

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
    )async*{
    if(event is CartStarted)
    {
      yield* _mapCartStartedToState();
    }
    else if(event is CartProductAdded)
    {
      yield* _mapCartProductAddedToState(event, state);
    }
    else if(event is CartProductRemoved)
    {
      yield* _mapCartProductRemovedToState(event, state);
    }
  }

  Stream<CartState> _mapCartStartedToState() async*{
    yield CartLoading();
    try{
      await Future<void>.delayed(Duration(seconds: 1));
    }catch(_) {}
  }

  Stream<CartState> _mapCartProductAddedToState(
    CartProductAdded event, CartState state) async*{
      if(state is CartLoaded)
      {
        try{
          yield CartLoaded(
            cart: Cart(
              products: List.from(state.cart.products)..add(event.product)
            ),
          );
        }catch(_) {}
      }
    }

  Stream<CartState> _mapCartProductRemovedToState(
    CartProductRemoved event, CartState state) async*{
      if(state is CartLoaded)
      {
        try{
          yield CartLoaded(
            cart: Cart(
              products: List.from(state.cart.products)..remove(event.product)
            ),
          );
        }catch(_) {}
      }
    }


}
