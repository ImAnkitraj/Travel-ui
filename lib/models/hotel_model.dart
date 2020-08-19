import 'package:flutter/material.dart';

class Hotel {
  String name, address, imageUrl;
  int price;

  Hotel({
    this.name,
    this.address,
    this.price,
    this.imageUrl,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/1.jpg',
    name: 'Shyam Hotel',
    address: 'Dukan ke Niche',
    price: 100,
  ),
    Hotel(
    imageUrl: 'assets/images/4.jpg',
    name: 'Shyam Hotel',
    address: 'Dukan ke Niche',
    price: 100,
  ),
    Hotel(
    imageUrl: 'assets/images/2.jpg',
    name: 'Shyam Hotel',
    address: 'Dukan ke Niche',
    price: 100,
  ),
    Hotel(
    imageUrl: 'assets/images/3.jpg',
    name: 'Shyam Hotel',
    address: 'Dukan ke Niche',
    price: 100,
  ),
];