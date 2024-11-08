
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gee_com/crop_content/harvesting.dart';
import 'package:gee_com/crop_content/intercropping.dart';
import 'package:gee_com/crop_content/manures.dart';
import 'package:gee_com/crop_content/seed.dart';
import 'package:gee_com/crop_content/selection.dart';
import 'package:gee_com/crop_content/soil.dart';
import 'package:gee_com/crop_content/sowing.dart';
import 'package:gee_com/crop_content/tillage.dart';
import 'package:gee_com/crop_content/water.dart';
import 'package:gee_com/pages/homepage.dart';




class Crop_Management extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery= MediaQuery.of(context);
    final buttonWith = mediaQuery.size.width*0.9;
    final buttonHeight = mediaQuery.size.height*0.09;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed:(){
              Navigator.pop(context,
                MaterialPageRoute(builder: (context)=>
                    Dashboard(),),
              );

            }
        ),
        title: const Text('Crop Management'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body:


      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
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
                      MaterialPageRoute(builder: (context) => Soil(),
                      ),
                    );
                  },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    child: Text('Soil Requirement',style: TextStyle(fontSize:19),),

                  ),
                ),



              ),

              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,

              ),



              SizedBox(
                height: 8,
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
                      MaterialPageRoute(builder: (context) => Tillage(),
                      ),
                    );

                  },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    child: Text('Tillage',style: TextStyle(fontSize:19),),

                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,

              ),
              SizedBox(
                width: buttonWith,
                height: buttonHeight,
                child:
                Container(
                  height: 8,
                  width: double.infinity,
                  child:

                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Selection(),));
                  },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    child: Text('Selection of Varieties',style: TextStyle(fontSize:19),),

                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,

              ),
              SizedBox( width: buttonWith,
                height: buttonHeight,
                child:
                Container(
                  height: 70,
                  width: double.infinity,
                  child:

                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Seed(),));
                  },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    child: Text('Seed Treatment and Inoculation',textAlign:TextAlign.center,
                      style: TextStyle(fontSize:18,),),

                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,

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
                        MaterialPageRoute(builder: (context) => Sowing(),));

                  },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

                    ),
                    child: Text('Sowing Time,Spacing and Speed Rate',textAlign:TextAlign.center,
                      style: TextStyle(fontSize:18),),

                  ),
                ),
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,

              ),



              SizedBox(
                height: 8,
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
                      MaterialPageRoute(builder: (context) =>Manures(),
                      ),
                    );

                  },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    child: Text('Manures and Fertilizers',style: TextStyle(fontSize:19),),

                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,

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
                        MaterialPageRoute(builder: (context) => Intercropping(),));

                  },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

                    ),
                    child: Text('Intercropping in Soybean',style: TextStyle(fontSize:19),),

                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,

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
                        MaterialPageRoute(builder: (context) => Water(),));

                  },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

                    ),
                    child: Text('Water Management',style: TextStyle(fontSize:19),),

                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,

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
                        MaterialPageRoute(builder: (context) => Harvesting(),));

                  },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

                    ),
                    child: Text('Harvesting and Threshing',style: TextStyle(fontSize:19),),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
