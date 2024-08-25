


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Management extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weed Management Practices',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.normal),),backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),  ),
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
                child: Text('The soybean crop should be weed free at least till 45 days after sowing (DAS).',
                    style:TextStyle(
                        fontSize: 18,color: Colors.white)),
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16,bottom: 16,top: 16),
                decoration:
                BoxDecoration(

                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Text('The priority-wise agronomic practices for this include two manual weeding (20 and 40 DAS) or intercultivation (Hand hoe/Dora/Kulpa). If it is not feasible due to continuous rains, then one can opt for chemical weed control.',
                    style:TextStyle(
                        fontSize: 18,color: Colors.white)),
              )
            ],
          ),


        ),
      ),
    );
  }
}
