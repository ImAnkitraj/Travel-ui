import 'package:flutter/material.dart';
import '../models/destination_model.dart';
import '../models/hotel_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal:20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Exclusive Hotels', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, letterSpacing: 1.5),),
            GestureDetector(
              onTap:(){print('see All');},
              child: Text('See All', style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w600, fontSize: 16.0, letterSpacing: 1.0),),
            ),
        ],),
      ),
      Container(
        height: 300.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:hotels.length,
          itemBuilder:(context, int index){
            Hotel hotel = hotels[index];
            return Container(
              margin: EdgeInsets.all(10.0),
              width: 240.0,
              child: Stack(
                alignment: Alignment.topCenter,
                children:[
                  Positioned(
                    bottom: 10.0,
                    child: Container(
                      height: 150.0, 
                      width: 240.0,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(hotel.name, style:TextStyle(letterSpacing: 1.2,fontSize: 22.0, fontWeight: FontWeight.w600)),
                            SizedBox(height:2.0),
                            Text(hotel.address, style:TextStyle(color: Colors.grey)),
                            SizedBox(height: 2.0,),
                            Text('\$${hotel.price}', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),)
                        ],),
                      ),
                    ),
                  ),
                  Container(
                    decoration:  BoxDecoration(
                      color: Colors.black, 
                      borderRadius: BorderRadius.circular(20.0), 
                      boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(0, 2.0), blurRadius: 6.0)]
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(height: 180.0, width: 220.0, image: AssetImage(hotel.imageUrl),fit: BoxFit.cover, )
                    ),
                  ),
                ]
              ),
            );
          }
        ),
      ),
    ],);
  }
}