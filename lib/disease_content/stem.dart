import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Stem extends StatelessWidget {
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
                'assets/images/stem_rot.jpg',
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

                  title: Text('Sclerotinia Stem Rot', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism :-Sclerotinia sclerotiorum. The pathogen is seed as well as soil borne. It affects Stem nodes, sometimes side branches and pods. Yield loss of 15% can occur due to this disease. Disease is favoured by cool (night temperature 10 oC to 21 oC), frequent rain and moist weather or wet conditions just prior to flowering to pod development stage. Continuous surface wetness for 42-72 hours is required for disease development.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On seed and seedling:-Severely infected seeds become flat, small and chalky 2.On well grown plants:- Disease generally appears at flowering stage and characterized by water soaked lesions at nodes of stem, which slowly turns to tan to white and spread acropetally and basipetally from nodes. Lesions later on girdle the stem . Symptoms are rarely observed on the main stem at the soil line. Foliar symptoms appear 7-14 days after stem lesions as leaves become grayish green and eventually turn brown. Under condition of excessive moisture wilting of leaves is common.Stem is girdled by white fluffy mycelial growth on all diseased plant parts, which is striking symptom of the disease. Numerous characteristic large, (bigger than those of charcoal rot) black, round to irregularly shaped sclerotia of varying sizes form externally on stems partially covered with dense white mycelium and internally in the stem pith and pods.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Deep summer ploughing to bury plant debris. Integrating crop management by using clean seeds without sclerotia, having low plant population in the field and rotation of soybean with non leguminous and non host crops. Avoiding planting of soybean directly after common bean / phaseolus spp., and sunflower etc. Seed treatment with Trichoderma viride @ 4-5 g or thiram + carbendazim (2:1) @ 3 g/kg seed.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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