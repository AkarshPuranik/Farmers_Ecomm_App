import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Rust extends StatelessWidget {
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
                'assets/images/rust.jpg',
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

                  title: Text('Rust', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Use of clean and healthy seeds.Burning of infected plant debris. Cultivation of moderately resistant varieties like Bragg, Himso 1563, Hardee, PK 472, JS 80-21, Pusa 37, VLS 21, NRC 12 etc. Seed treatment with thiram  +carbendazim (2:1) or captan @ 3g/Kg seed and spray of zineb or mancozeb 0.2% on infected crop.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On seedling and well grown plants:- Initially abundant chlorotic gray brown minute spots of the size of tip of sewing needle appear in-group on the leaves, primarily on the lower surface. Slowly these spots increase in size and turn to tan to reddish brown angular spots measuring 2 to 5 mm2 and later form pustules. Usually the leaf tissues around the group of spots become yellow which distinguishes rust symptoms from bacterial pustule symptoms where leaf tissues around a single spot become chlorotic and yellow. Leaves turn brown within a short time causing early defoliation and reduction in number of pods, seeds and seed weight.The disease usually appears in small patches in the field then quickly spread to whole field . Presence of loose brown powder owing to rupture of pustules is a characteristic symptom.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Deep ploughing during summer. No summer and rabi cultivation of soybean and rouging of self sown soybean plants in these seasons. Roguing and burning of infected plants, crop and crop residues during the season. Intercropping of soybean with other rainy season crops of the area. Cultivation of rust tolerant varieties like Ankur, PK 1024, PK 1029, JS 80-21, Indira soybean 9, MAUS 61-2 or early maturing varieties. Two to three sprays of hexaconazole (Contaf) or propiconazole (Tilt) or triadimefon (Bayleton) or oxycarboxin (plantvax) @ 0.1% are found effective.To enable entering soybean field for spray at least after every 15 rows a strip of about 1.50 m be left vacant in the field. One protective spray of any above fungicides over the crop at 35 to 40 DAS in rust hot spot areas.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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