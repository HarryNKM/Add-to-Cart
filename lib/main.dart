import 'package:Add_Cart_App/screen/cart/cart_screen.dart';
import 'package:Add_Cart_App/screen/home/home_screen.dart';
import 'package:Add_Cart_App/screen/product/Product_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false,

        routes: {
      '/': (context) => const HomeScreen(),
      'product': (context)=> const ProductScreen(),
      'cart': (context) => const CartScreen()
    }),
  );
}
