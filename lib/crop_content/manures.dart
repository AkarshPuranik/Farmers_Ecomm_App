
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Manures extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manures and Fertilizers',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.normal),),backgroundColor: Colors.green,
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
                child: Text(' Soybean is considered to be moderately exhaustive crop. Balanced nutrients application ensures better yield performance of soybean. The integration of 5-10 t Farm Yard Manure or 2.5 t poultry manure/ha along with the basal application of N:P205:K20:S generally provides balanced nutrition for harnessing the yield potential of soybean. ',
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
                child: Text(' In soybean, use of fertilizers is recommended only as basal application. Therefore, farmers are advised not to use any fertilizers particularly urea or DAP as top dressing in standing crop unless being recommended by soybean scientists. In general, for harvesting good soybean yield, it requires recommended dose of NPKS which can be accordingly tailored after soil testing. ',
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
                child: Text(' Farmers are also advised not to mix fertilizers along with seed during sowing of soybean. In close contact with fertilizer it gets rotten in the soil. They should ensure the placement of seed at 3 cm and the fertilizer placement at 5 cm in the soil. The top dressing of fertilizer in soybean is generally avoided or to be used in consultation with soybean scientists. true ',
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
