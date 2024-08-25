import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class indian extends StatelessWidget {
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
                'assets/images/virus_bud_blight.jpg',
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

                  title: Text('Indian Bud Blight', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism:- In India the causal pathogen is identified as Peanut Bud necrosis virus whereas in other countries it is Tobacco ring spot virus (TRSV). The virus has been described as pleiomorphic and unstable myxovirus.It affects Leaves, buds (specially terminal bud), stems, petioles & pods.Disease is wide spread all over the India. It remained serious at Parbhani in Maharashtra and in Karnataka in 1986 and was in epidemiological proportions in Sehore (Madhya Pradesh) in 1987.Heavy incidences are also reported from Kota, Delhi, Raipur and Indore (1989 onwards).This is a very serious disease as it can results in 100% loss. Yield losses of 70-80% from Sehore, 66% in Karnataka and 12% at Delhi have been reported.Disease is more severe at the temperature below 25 C and under water stress condition. Prolonged cool period reduces the chances of seed infection.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On well grown plant-Most striking symptom is the browning and curving of the terminal bud to form a crookLater on other buds become brown, necrotic and brittle .Necrosis of veins, midrib, petiole and stem is also common. Petioles are often thickened and shortened and may be curved distorting the shoot tips.Sometimes the petioles become so brittle that they break by pressing with fingersLeaflets are dwarfed and tend to cup or roll and the leaf blades become rugosed and bronzed.If infection is early then plants become severely stunted with shortened internodal length and several auxillary shoots.Pods are not formed or remain severely underdeveloped or aborted.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('No resistant varieties and suitable chemical control are available. However, following measures will keep the disease less severe with reduced yield loss.Less susceptible varieties viz. JS71-05, JS 79-81, KHSb 1 etc. should be cultivated.Crop should be kept free of broad-leaved weeds.Roguing and burning of disease infected plants or plant parts.Seed treatment with Imidacloprid @5 g/kg and spray of nuvacron (0.01%) or rogor (0.01%) or any other systemic insecticides.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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