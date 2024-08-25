import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Sowing extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sowing Time,Spacing and Seed Rate',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight:FontWeight.normal),),backgroundColor: Colors.green,
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
                child: Text(' Since soybean is a rainfed crop grown during kharif season, it is sown only after the arrival of monsoon. Farmers are advised to sow their crop only after 100 mm rainfall is received to ensure germination of seed and development of the plant till next spell of rains. ',
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
                child: Text('The sowing of soybean seed may be done either using traditional tools like bullock drawn Dufan /Tifan /seed drill or by using tractor drawn machines like Seed-cum-Fertilizer drill, BBF Seed Drill, FIRB Seed Drill keeping row to row spacing of 45 cm and plant to plant spacing of 4-5cm at 3 cm depth.  ',
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
                child: Text(' In case of delayed sowing on account of late on-set of monsoon, farmers are advised to narrow the row spacing at 30 cm and increase the seed rate by 25% in order to optimize plant population and avert the likely yield loss due to slow growth. ',
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
                child: Text(' The seed rate and germination percentage are inversely proportional to seed size of soybean varieties. The small seeded varieties are excellent in germination percentage compared to bold seeded varieties. ',
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
                child: Text(' Therefore, the seed rate should be modified accordingly in order to achieve optimum plant population and yield. The recommended seed rate for soybean varieties having medium seed size (JS 20-29, JS 93-05, JS 2069) is 60-65 kg/ha while for bold seed varieties (JS 95-60, JS 20-34, NRC 7), the seed rate should be increased to 80 kg/ha. The seed rate for small seeded varieties like NRC 37 and JS 9752 should be reduced to only 50 kg/ha. ',
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
                child: Text('If farmers have not used PPI herbicide (PPI) herbicides, they are advised to use recommended pre-emergence herbicide immediately after sowing to before emergence of soybean.  ',
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