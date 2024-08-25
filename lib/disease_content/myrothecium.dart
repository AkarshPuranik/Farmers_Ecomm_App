import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Myrothecium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/myrothecium.jpg',
                fit: BoxFit.cover,
              ),
            ),

            backgroundColor: Colors.green[900],

          ),
          SliverFillRemaining(
            child: DefaultTabController(
              length: 3,

              child: Scaffold(backgroundColor: Colors.green[800],
                appBar: AppBar(
                  automaticallyImplyLeading: false,

                  title: Text('Myrothecium Leaf Spot', style:TextStyle(color: Colors.white,fontSize: 20)),
                  backgroundColor: Colors.green[800],

                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text('Description',


                          style: TextStyle(fontSize: 14, color: Colors.white ,fontWeight: FontWeight.bold,),


                        ),),
                      Tab(
                        child: Text('Symptoms',
                          style: TextStyle(fontSize: 14, color: Colors.white ,fontWeight: FontWeight.bold),

                        ),),

                      Tab(
                        child: Text('Management',
                          style: TextStyle(fontSize: 14, color: Colors.white ,fontWeight: FontWeight.bold,),
                        ),),

                    ],
                  ),

                ),
                body: TabBarView(
                  children: [
                    Container(

                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(

                          color: Colors.lightGreen,
                          borderRadius:BorderRadius.circular(50)
                      ),
                      child: Center(child: Text('Causal Organism :- Myrothecium roridum Tode ex Fries.The pathogen is predominently air borne and also seed borne.It affects leaves and pods.The disease is distributed throughout the soybean growing area of India but more prominent in Madhya Pradesh.When it appears early the disease can cause 20 to 40% loss in yield under favourable conditions.Warm and humid weather favours the disease.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On seed and seedling:-Infected seeds when sown cause seed rot and blight of emerged seedlings.2.On well grown plant:-Disease is visible around 30 to 35 days after planting as small round brown spots on leaves . Later on these spots become dark with dark brown or purple margin surrounded by a translucent area in concentric rings.Slowly spots merge with each other and become of irregular shapeOn maturity, sporodochia are visible as white erumpent structures on translucent zone of the spots, which later turns to black dot like structures. This is the characteristic symptom of the disease.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Use of healthy and certified seed.Cultivation of resistant/moderately resistant varieties like Bragg, JS 71-05, JS 335, MACS 13, MACS 124, MAUS 47, NRC7, PK 564, etc...Seed treatment with thiram +carbendazim (2:1) @ 3 g per kg followed by spray of carbendazim or thiophanate methyl (0.05% to 0.1% or 400 to 800 g/ha) or mancozeb (0.25% or 2 kg/ha). First spray at 35 DAS is very effective.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}