import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gee_com/disease_content/bacterial.dart';
import 'package:gee_com/disease_content/fungal.dart';
import 'package:gee_com/disease_content/viral.dart';
import 'package:gee_com/pages/homepage.dart';



class Disease_Management extends StatefulWidget {

  @override
  State<Disease_Management> createState() => _Disease_ManagementState();
}

class _Disease_ManagementState extends State<Disease_Management> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed:(){
                Navigator.pop(context,
                  MaterialPageRoute(builder: (context)=>
                      Dashboard(token: ''),),
                );

              }
          ),
          title: const Text('Disease Management'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(

            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    const Padding(padding: EdgeInsets.only(left: 10)),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/images/bd.jpg',
                              width: 150,height: 150,
                              fit: BoxFit.cover) ,
                        ),

                        ElevatedButton(onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>
                                Bacterial(),),
                          );
                        },
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white
                            ),
                            child: const Text('Bacterial Diseases')
                        ),

                      ],

                    ),
                    const Padding(padding: EdgeInsets.only(right: 10)),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/images/fungal.jpg',
                              width: 150,height: 150,
                              fit: BoxFit.cover) ,
                        ),

                        ElevatedButton(onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>
                                Fungal(),),
                          );

                        },
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white
                            ),
                            child: const Text('Fungal Diseases')
                        ),

                      ],

                    ),

                  ],


                ),




                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/viral.jpg',
                          width: 150,height: 150,
                          fit: BoxFit.cover) ,
                    ),


                    ElevatedButton(onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Viral
                          (),),
                      );

                    },
                        style:ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white
                        ),
                        child: const Text('Viral Diseases')
                    ),
                  ],
                ),
              ],
            )

        ),

      ),
    );
  }
}