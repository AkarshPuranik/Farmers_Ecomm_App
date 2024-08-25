import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Harvesting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harvesting and Threshing',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.normal),),backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
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
                child: Text('Optimum time of harvesting is very important for soybean as it causes yield loss due to shattering and viability loss due to filed weathering.',
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
                child: Text('Initiation of change of pod color of soybean is the right indication to go for harvesting. At this time, the moisture percentage of soybean grain is around 14-16%. Hence, the farmers are advised not to wait till the foliage/plant turns yellow. Harvesting can be done when 95% pod change colour from green. ',
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
                child: Text('The harvested soybean crop, after sun drying for 2-3 days is ready for threshing. Because of sowing of subsequent crop if threshing is to be performed later, the harvested soybean should be collected preferably on threshing floor and covered with tarpoline to avoid damage from rain/shattering. To maintain viability of the seed and to avoid loss/mechanical damage, threshing should be done at 350-400 гр. ',
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
                child: Text('The threshed soybean should again be allowed to sun drying for 3-4 days in order to bring down the moisture percentage up to 10% which is essential to avoid fungal infection during storage. ',
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
                child: Text('The storage place should be cool with aeration and insect free. The soybean bags should be kept upright as far as possible. If staging is to be done, it should be only up to 4-5 bags in order to maintain the viability/germinability of soybean seed. ',
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
                child: Text('While moving the seed bags to storage house, it should be carefully placed at the appropriate place/platform. The seed bags should not be in direct contact with floor/wall. The moisture seepage in the walls/floor may be a source of infection of diseases, hence can be avoided for storage.',
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