
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Tillage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tillage',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.normal),),backgroundColor: Colors.green,
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
                child: Text('Deep ploughing is essential during summer, after harvesting the rabi crop. This facilitates exposing the hibernating insects to extreme heat and predatory birds as well as movement of nutrients and infiltration of soil water. ',
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
                child: Text('One deep ploughing once in 3-4 years, otherwise one normal ploughing in summer followed by 2 criss-cross harrowings or cultivation for breaking of soil clods will make ideal seed bed for a good crop of soybean cultivation. ',
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
                child: Text(' To have sustainable soybean yield, it is very important to maintain soil health. Hence, farmers are advised to incorporate organic manure (well decomposed FYM @5-10 t/ha or Poultry Manure @ 2.5t/ha) at the time of land preparation.',
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
                child: Text('If the quantity of organic manure is limited, they are advised to apply the same on rotation basis in their fields every year. It is also advised to apply Gypsum @ 150-200 kg/ha along with FYM/Poulty manure before the last harrowing in case the nutritional requirement is to be planned without sulphur sources. ',
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
                child: Text(' Soon after arrival of monsoon, the land may be prepared by 2 crisscross harrowings followed by planking to level the field. If the farmer is interested to apply PPI herbicide for control of weeds, this is the right time to do so.',
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
                child: Text('But for getting the actual benefit of Pre-plant Incorporation (PPI) herbicide, they should ensure that sufficient moisture is present in the soil. This also requires additional tillage for proper mixing of herbicide in the soil. Hence it should be sprayed immediately before second harrowing. ',
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
                child: Text('During past few years, soybean yields have been adversely affected across the country because of adverse climatic conditions (Uncertainties/delayed or unpredictable onset of monsoon/heavy storms and long dry spells). ',
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
                child: Text(' Considering these, farmers are advised to use BBF or Ridge and Furrow methods for soybean planting in order to mitigate the climatic adversities.',
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
                child: Text('During long dry spells, the crop sown on flat land should receive a dora/kulpa/hoeing operation to reduce moisture loss from soil during early growth period (upto one month from sowing). ',
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
