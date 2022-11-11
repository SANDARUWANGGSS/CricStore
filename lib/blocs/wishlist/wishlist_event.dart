part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

}

class LoadWishlist extends WishlistEvent {
  @override
  List<Object?> get props => [];
  // @override
  // List<Object> get props => [];
}

class AddProductToWishlist extends WishlistEvent{
  final Product product;

  const AddProductToWishlist(this.product);

  @override
  List<Object> get props => [product];
}


class RemoveProductsFromWishlist extends WishlistEvent{
  final Product product;

  const RemoveProductsFromWishlist(this.product);

  @override
  List<Object> get props => [product];
}

