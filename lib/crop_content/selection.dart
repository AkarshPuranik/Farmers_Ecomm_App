
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




class Selection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Of Varieties',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.normal),),backgroundColor: Colors.green,
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
                child: Text(' In order to avoid risk of yield reduction due to aberrant climatic situations, farmers are recommended to grow 3-4 soybean varieties with varying maturity periods (VarietalCafeteria Approach) in their fields.',
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
                child: Text('Different varieties possess resistance/tolerance to particular insect-pest and diseases. As they mature at different time, it gives convenience for the farmers during harvesting and threshing toO. ',
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
                child: Text('Genetically, the yield of soybean varieties is inversely proportionate with maturity period. Long duration soybean varieties are able to give more yields subject to application of irrigation in event of early cessation of monsoon. ',
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
                child: Text(' Farmers are advised to select 3-4 varieties popular among their zone and ensure the availability of seed of these varieties well in advance. They should also check the germination percentage of seed a fortnight prior to sowing so as to have optimum plant population. /tolerance to particular insect-pest and diseases. As they mature at different time, it gives convenience for the farmers during harvesting and threshing too.',
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
                child: Text(' Farmers are advised to check germination status of seed purchased/available with them before sowing. To ensure optimum plant population and thereby good yield, minimum 70% germination is essential. This can be done through sowing of 100 seeds in 1m X 1m plot and it is kept moist. From 5-8 days emergence is counted everyday till the count is stabilized.',
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
                child: Text('The germination test can also be done by placing 100 seeds in between two newspaper sheets and rolling them with a moist cloth.',
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
