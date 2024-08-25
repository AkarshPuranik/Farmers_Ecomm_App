

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class General extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Precautions',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.normal),),backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ), ),
      body:
      SingleChildScrollView(
        child: Padding(padding:
        EdgeInsets.only(top: 20,right: 30,left: 30,bottom: 25,),
          child:

          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 16,top: 16,bottom: 16),

                decoration:
                BoxDecoration(

                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle
                )
                ,
                child: Text('While using PPI herbicides, proper soil incorporation of herbicide must be ensured and it should be used only on moist soil.',
                    style:TextStyle(
                        fontSize: 18,color: Colors.white)),
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16,top: 16,bottom: 16),

                decoration:
                BoxDecoration(

                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Text('In case of PPI or PE herbicide application, farmers are advised to intercultivate the soybean crop by Dora/ Kulpa in between 20 to25 DAS.',
                    style:TextStyle(
                        fontSize: 18,color: Colors.white)),
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16,top: 16,bottom: 16),

                decoration:
                BoxDecoration(

                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Text('To control the weeds effectively, it is very necessary to make the appropriate spraying solution and its uniform spray on entire area/weed foliage.',
                    style:TextStyle(
                        fontSize: 18,color: Colors.white)),
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16,top: 16,bottom: 16),
                decoration:
                BoxDecoration(

                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Text('Hence farmers are advised to use 500 litre of water per hectare along with recommended quantity of herbicides using Flat Fan orFlood Jet nozzle.',
                    style:TextStyle(
                        fontSize: 18,color: Colors.white)),
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16,top: 16,bottom: 16),
                decoration:
                BoxDecoration(

                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Text('It is also advised that, farmers should not carry any intercultural operations (Dora/Kulpa) till 10 days after spraying of PPI or PE herbicides. Similarly, same herbicide may not be used every year.',
                    style:TextStyle(
                        fontSize: 18,color: Colors.white)),
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,
              ),



            ],
          ),


        ),
      ),
    );
  }
}