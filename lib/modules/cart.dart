import 'package:flutter/material.dart';
import 'package:sneakers_shop/modules/shoe.dart';

class Cart extends ChangeNotifier {
  // List of items for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Jordan",
        price: "231",
        description: "Air jordan shoes",
        imagePath: "lib/images/jordan.png"),
    Shoe(
        name: "KDtrey",
        price: "224",
        description: "KDTrey shoes",
        imagePath: "lib/images/kdtrey.png"),
    Shoe(
        name: "Zoom Freak",
        price: "521",
        description: "Zoom Freak shoes",
        imagePath: "lib/images/nikefreak.png"),
    Shoe(
        name: "Kyrie",
        price: "212",
        description: "Kyrie shoes",
        imagePath: "lib/images/kyrie.png"),
  ];

  // List item in user caret
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getCart() {
    return userCart;
  }

  // add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
