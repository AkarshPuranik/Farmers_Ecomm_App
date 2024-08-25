import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Collar extends StatelessWidget {
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
                'assets/images/collar_rot.jpg',
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

                  title: Text('Collar Rot', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism : Sclerotium rolfsii Sacc. (Teleomorph Athelia rolfsii). The pathogen is soil borne. It affects Stem bases and lower part of stem. Disease is occurring throughout soybean growing areas of India but most common in the states of Madhya Pradesh, Rajasthan and Karnataka The disease causes yield losses ranging from 30 to 40 % under congenial climate. Hot (25 oC to 35 oC) and humid weather, well aerated sandy or sandy loam soil, high soil moisture, high plant population, dense canopy cover and large amount of undecomposed organic matter from previous crops favour the disease.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('I. Seed and seedling:-Pathogen causes damping off in seedlings. Subsequent decay in collar region results in drooping and wilting of seedlings. Most striking symptom is the formation of white cottony mats of mycelium around the collar region and some times on the soil (generally disappears during drought) with reddish brown to dark brown, globose to sub-globose sclerotia about the size of mustard seeds . 2. Well grown plant :- Infection appears in the form of basal stem rot, wilt and blighting of the leaves. Appearance of white cottony mats of mycelium around the collar region with sclerotia is also common. Under favourable condition sclerotia are even produced on the soil surface near infected plants.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Pathogen perpetuate through soil, crop residues and weeds therefore, field sanitation, deep summer ploughing to bury debris and sclerotia to a depth of 15 to 25 cm help in reducing the disease. Crop rotation with maize, sorghum etc. helps in containing the disease to some extent. Use of less susceptible variety NRC 37 will reduce the yield loss. Roguing and burning of infected plants check the spread of disease. Seed treatment with thiram + carben-dazim (2:1) @ 3 g/Kg or Trichoderma viride @ 4-5 g/Kg seed is effective. Soil application of neem cake @ 2.5 t/ ha or soil drench with Chloroneb @ 20 kg/ha in disease hot spot areas is recommended.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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