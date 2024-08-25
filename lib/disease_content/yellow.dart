import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class yellow extends StatelessWidget {
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
                'assets/images/yellow.jpg',
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

                  title: Text('Yellow Mosaic', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism:- The incitant of the disease is Mung bean yellow mosaic virus.It is a gemini virus recently named genus Begomovirus which is not seed borne and transmitted predominantly by white flies Bemisia tabaci and B. gossypiperda and also by aphids and pollen.Disease produces symptom only on eaves.The disease is more common and severe in Kangra region of Himachal Pradesh, tarai region of Uttaranchal, plains of Delhi, Punjab and Haryana and parts of Madhya Pradesh and Uttar Pradesh.It can cause yield loss ranging from 5-90%.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On seed and seedling:-Symptoms can be seen in seedlings with in 15 days of germination as small yellow diffused patches which later on coalesce to make leaf more or less complete yellow.2.On well grown plant:-Symptoms of the disease appear in the form of conspicuous yellowing along small veins of the leaves followed by severe yellow mosaic and mottling of leaves, which is a diagnostic symptom.Yellowing is either scattered or produced in indefinite bands along the major veins.Rusty necrotic spots appear in the yellow areas as the leaves mature.Sometimes, growth of mould can be seen in the infected leaf areas.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Pre sowing soil application of phorate @10kg/ha.Use of resistant varieties like PK 416, PK 472, PS 564, PK 1024, PK 1029, PK 1042, Pusa 37, SL 295, SL 525 etc.Cultivation of 2 to 3 or more varieties and change of varieties at least after every two years.Roguing of infected plants and plant parts.Weed free cultivation.Seed treatment with thiamethoxam 70WS @ 3g/kg seed in hot spot areas and spray of thiamethoxam 25 WG @ 100 g or methyl dematon 25EC @ 0.8 lit/ha or ethofenprox 10 EC @ 1.0 lit/ha.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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