import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Water extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Management',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.normal),),backgroundColor: Colors.green,
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
                padding: EdgeInsets.only(left: 16,bottom: 16,top: 16),

                decoration:
                BoxDecoration(

                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle
                )
                ,
                child: Text('Soybean is, by and large, grown as a rainfed crop during kharif season. Since last few years the distribution of rainfall was found to be uneven and erratic. Long dry spells, particularly during critical growth stages like seedling, flowering and pod fill affect the yield adversely. Hence, farmers are advised to apply life saving irrigation during these critical stages in order to sustain yield levels. Farmers are advised to use BBF or Ridge and Furrow methods for soybean planting in order to mitigate the climatic adversities. 20 The BBF or FIRB seed drill machines developed by ICAR-ISR can be used for the same. ',
                    style:TextStyle(
                        fontSize: 18,color: Colors.white)),
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.black12,
              ),
              Container(
                padding: EdgeInsets.only(left: 16,bottom: 16,top: 16),

                decoration:
                BoxDecoration(

                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle
                )
                ,
                child: Text('As explained earlier, seedling, flowering and pod formation are the critical growth stages of soybean. Hence, during any of these stages, life saving irrigation should be given to soybean in case of long dry spells. ',
                    style:TextStyle(
                        fontSize: 18,color: Colors.white)),
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.black12,
              ),
            ],
          ),
        ),
      ),
    );

  }
}