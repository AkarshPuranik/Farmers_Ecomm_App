import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Target extends StatelessWidget {
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
                'assets/images/target.jpg',
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

                  title: Text('Target Leaf Spot', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism:- Corynespora cassicola(Berk. & Curt.) Wei.The pathogen is seed, soil and air borne.It affects roots (not common in India), stems, leaves, pods and seeds.The disease is very common and severe in the states of HimachalPradesh but also present in Madhya Pradesh.The disease can cause yield loss ranging from 18 to 32%.In temperate region the pathogen grows best at the temperature range of 18-20 oC whereas in warmer region it prefer most the temperature of 28 oC.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On seed & seedling:-Small brown blackish lesions are produced on seeds.Stems and roots are infected in early seedling stage and underground symptoms can be seen as early as three days after emergence.2.On well grown plant:-Infection in leaves initiate with the appearance of minute, chlorotic or reddish-brown spots with a yellow halo.Later on the spots increase in size become round to irregular in shape with a dark brown center, a lighter brown ring and a thick dark brown border with or without a yellow halo, resembling a shooting target.Spread of the disease is very quick upwards in the same plant and in neigh-bouring plants under the condition of high humidity, ultimately resulting in severe defoliation before full pod development.Symptoms on petioles and stems start as small, dark brown, water soaked spots, which later lead to lighter brown lesions followed by stem rot.Pods spots are generally circular with slightly depressed, purple black centers and brown margins. Under extended rainfall or high humidity, spots coalesce and cover the whole pod and also infect the seeds.Root infections are exhibited as purple to reddish discoloration of corticle tissues of hypocotyl, tap root and large lateral roots, which later turn to dark violet brown to black.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Burning of infected plant parts to prevent secondary spread of the disease.Cultivation of moderately resistant varieties like JS 335, JS 72-44, PK 1024, Pb 1, MAUS 71, DSb 5 etc.Spray of carbendazim or thiophanate methyl (0.05%).',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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