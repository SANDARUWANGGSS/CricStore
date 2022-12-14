import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cric_store/models/models.dart';
import 'package:cric_store/models/wishlist_model.dart';
import 'package:equatable/equatable.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading()) {
    on<LoadWishlist>(_onLoadWishlist);
    on<AddProductToWishlist>(_onAddProductToWishlist);
    on<RemoveProductsFromWishlist>(_onRemoveProductsFromWishlist);
  }

  void _onLoadWishlist(event, Emitter<WishlistState> emit) async{
    emit (WishlistLoading());
    try{
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(WishlistLoaded());
    }catch(_){
      emit (WishlistError());
    }
  }
  void _onAddProductToWishlist(event, Emitter<WishlistState> emit){
    final state = this.state;
    if(state is WishlistLoaded)
    {
      try{
        emit(WishlistLoaded(
          wishlist: Wishlist(
            products: List.from(state.wishlist.products)..add(event.products),
            ),
        ),
        );
        }on Exception{
          emit(WishlistError());

      }
    }
  }
  void _onRemoveProductsFromWishlist(event, Emitter<WishlistState> emit){
    final state = this.state;
    if(state is WishlistLoaded)
    {
      try{
        emit(WishlistLoaded(
          wishlist: Wishlist(
            products: List.from(state.wishlist.products)..remove(event.products),
            ),
        ),
        );
        }on Exception{
          emit(WishlistError());

      }
    }
  }
}

// class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
//   WishlistBloc() : super(WishlistLoading()); 

//     @override
//     Stream<WishlistState> _mapEventToState(
//       WishlistEvent event,
//     ) async* {
//       if(event is StartWishlist){
//         yield* _mapStartWishlistToState();
//       }
//       else if(event is AddWishlistProduct){
//         yield* _mapAddWishlistProductToState(event,state);
//       }
//       else if (event is RemoveWishlistProduct){
//         yield* _mapRemoveWishlistProductToState(event,state);
//       }
//     }
//       Stream<WishlistState> _mapStartWishlistToState() async*{
//         yield WishlistLoading(); 
//         try {
//           await Future<void>.delayed(Duration(seconds: 1));
//           yield const WishlistLoaded();
//           } catch(_) {}
//       }

//       Stream<WishlistState> _mapAddWishlistProductToState(
//         AddWishlistProduct event,
//         WishlistState state,
//       ) async*{
//         if(state is WishlistLoaded)
//         {
//           try{
//             yield WishlistLoaded(wishlist: Wishlist(products: List.from(state.wishlist.products)..add(event.product)));
//           }catch(_) {}
//         }
//       }

//       Stream<WishlistState> _mapRemoveWishlistProductToState(
//         RemoveWishlistProduct event,
//         WishlistState state,
//       ) async*{
//         if(state is WishlistLoaded)
//         {
//           try{
//             yield WishlistLoaded(wishlist: Wishlist(products: List.from(state.wishlist.products)..remove(event.product)));
//           }catch(_) {}
//         }
//       }

// }

