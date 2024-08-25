

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Herbicides extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Losses due to Weed',style: TextStyle(color: Colors.white),),backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ), ),
      body:
      Padding(padding:
      EdgeInsets.only(top: 40,right: 30,left: 30,bottom: 25,),
        child:

        Container(
          padding: EdgeInsets.only(left: 16,bottom: 16,top: 16),



          decoration:
          BoxDecoration(

            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(20),
          )
          ,
          child: Text('Weeds cause soybean yield losses up to 70% if not controlled.Weed management is very important operation in Vertisols and associated soils because of continuous rains. Weeds compete with soybean for nutrition and other natural resources at very higher rate. Hence, their management is very essential at appropriate stage. Yield losses depend on the time of weed occurrence, types of weeds and duration of weeds present in the field.',
              style:TextStyle(
                  fontSize: 19,color: Colors.white)),
        ),


      ),
    );
  }
}