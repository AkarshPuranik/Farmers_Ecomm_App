import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Intercropping extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intercropping in Soybean',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.normal),),backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),),
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
                child: Text(' Soybean is grown throughout the country as rainfed crop during the June/July-October. It is also successfully grown as intercrop with cotton, sugarcane and other horticultural crops. Soybean + pigeonpea in 4: 2 combinations are most popular intercropping system in Maharashtra including Vidarbha region. ',
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
                child: Text(' Intercropping of soybean with suitable companion crop is found to be remunerative compared to sole cropping. In rainfed areas where only one crop is possible, it is recommended that soybean should be intercropped with pigeonpea. Similarly, under irrigated situations, it can be intercropped with maize, sorghum, cotton, pearl millet, finger millet so that it does not interfere with the next rabi crop. Soybean can also be successfully planted on the bunds of paddy fields for additional income. ',
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
                child: Text(' When intercropped, the sowing can be done at 30 cm row to row spacing in 4:2 (soybean + pigeonpea/ maize/ sorghum/ cotton). The intercrop seed drill designed and developed by ICAR-IISR can be used for this purpose. Farmers can also grow soybean at space available in different orchards like mango, jackfruit, guava, and papaya during initial years ',
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