import 'package:flutter/material.dart';
import './activity_model.dart';

class Destination{
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.activities,
    this.city,
    this.country,
    this.description,
    this.imageUrl,
  });
}

List<Activity> activites = [
  Activity(
    imageUrl: 'assets/images/1.jpg',
    name: 'Activity 1',
    type: 'Hiking',
    startTime: ['12:30 pm', '3:00 pm'],
    rating: 3,
    price: 400,
  ),
    Activity(
    imageUrl: 'assets/images/1.jpg',
    name: 'Activity 1',
    type: 'Hiking',
    startTime: ['12:30 pm', '3:00 pm'],
    rating: 3,
    price: 400,
  ),
    Activity(
    imageUrl: 'assets/images/1.jpg',
    name: 'Activity 1',
    type: 'Hiking',
    startTime: ['12:30 pm', '3:00 pm'],
    rating: 3,
    price: 400,
  ),
];


List<Destination> destinations = [
  Destination(
    activities: activites,
    imageUrl: 'assets/images/1.jpg',
    city: 'Ranchi',
    country: 'India',
    description: 'Amazing Place',
  ),
  Destination(
    activities: activites,
    imageUrl: 'assets/images/5.jpg',
    city: 'Ranchi',
    country: 'India',
    description: 'Amazing Place',
  ),  
  Destination(
    activities: activites,
    imageUrl: 'assets/images/4.jpg',
    city: 'Ranchi',
    country: 'India',
    description: 'Amazing Place',
  ),  
  Destination(
    activities: activites,
    imageUrl: 'assets/images/2.jpg',
    city: 'Ranchi',
    country: 'India',
    description: 'Amazing Place',
  ),  
  Destination(
    activities: activites,
    imageUrl: 'assets/images/3.jpg',
    city: 'Ranchi',
    country: 'India',
    description: 'Amazing Place',
  ),
];