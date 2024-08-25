
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gee_com/weed_content/general.dart';
import 'package:gee_com/weed_content/herbicides.dart';
import 'package:gee_com/weed_content/losses.dart';
import 'package:gee_com/weed_content/management.dart';
import 'package:gee_com/weed_content/types.dart';






class Weed extends StatelessWidget {
  final List<String> imageList = [
    'assets/images/weed.jpg',
    'assets/images/cy.jpg',
    'assets/images/geni.jpg',
    'assets/images/cru.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery= MediaQuery.of(context);
    final buttonWith = mediaQuery.size.width*0.9;
    final buttonHeight = mediaQuery.size.height*0.07;
    return Scaffold(
      appBar: AppBar(
        title: Text('Weed Management',),backgroundColor: Colors.green,foregroundColor: Colors.white,
      ),
      body:
      Column(



        children: [
          Expanded(child:

          CarouselSlider(
            items: imageList.map((image) {
              return Container(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              );
            }).toList(),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 200),
              viewportFraction: 0.8,
            ),
          ),
          ),

          SizedBox(
            width: buttonWith,
            height: buttonHeight,
            child:
            Container(
              height: 56,
              width: double.infinity,
              child:

              ElevatedButton(onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Losses(),
                  ),
                );
              },
                style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                child: Text('Losses due to Weed',style: TextStyle(fontSize:19),),

              ),
            ),


          ),

          SizedBox(
            height: 16,
          ),
          SizedBox(
            width: buttonWith,
            height: buttonHeight,
            child:

            Container(
              height: 56,
              width: double.infinity,
              child:

              ElevatedButton(onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Types(),
                  ),
                );

              },
                style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                child: Text('Types of Weed',style: TextStyle(fontSize:19),),

              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            width: buttonWith,
            height: buttonHeight,
            child:
            Container(
              height: 56,
              width: double.infinity,
              child:

              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Management(),));
              },
                style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                child: Text('Weed Management Practices',style: TextStyle(fontSize:19),),

              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox( width: buttonWith,
            height: buttonHeight,
            child:
            Container(
              height: 56,
              width: double.infinity,
              child:

              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Herbicides(),));
              },
                style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                child: Text('Recommended Herbicides',style: TextStyle(fontSize:19),),

              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox( width: buttonWith,
            height: buttonHeight,
            child:
            Container(
              height: 56,
              width: double.infinity,
              child:

              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => General(),));
              },
                style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

                ),
                child: Text('General Precautions',style: TextStyle(fontSize:19),),

              ),
            ),
          ),

        ],
      ),



    );
  }
}
