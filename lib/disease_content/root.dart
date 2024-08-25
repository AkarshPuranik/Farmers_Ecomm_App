import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Root extends StatelessWidget {
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
                'assets/images/root_rot.jpg',
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

                  title: Text(' Root Rot, Stem Rot'
                    ' & Aerial Blight', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism :-The disease is incited by Rhizoctonia solani Kuhn., whose teleomorph is Thanatephorus cucumeris.The pathogen is seed, soil and air borne.It affects Roots, lower stems (just below soil line in seedlings as well as in mature plants) stems, leaves, petioles and pods.Distributed throughout the India but more severe in the states of Madhya Pradesh and Uttaranchal.It can cause up to 35% loss in vield on account of pre and post emergence damping off, root rot, seedling blight and blight in well grown plant resulting in less number of pods and seeds per pod.A temperature range of 24 to 32 oC and continued wet soil condition with soil moisture at 30-60 percent of water holding capacity is favourable for root rot phase.where as soil moisture of about 70 percent of water holding capacity, sandy and light soils and pH greater than 6.6 favours seedling blight phase.Rain or free moisture on plant surface with warm wet or humid weather is very important for the development of foliar/aerial blight phase of the disease.Severity of disease increases with monoculture of soybean.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('seed and seedling:-Infected seeds have irregularly shaped tan or light brown sunken lesions.Seedlings with infected shoot apices stop growing and become stunted and cotyledons remain green.Reddish brown sunken lesions on roots and basal portion of the stems just above the soil line, which are often surrounded by brown mycelial growth.Besides causing pre emergence mortality, seedlings may die later on as lower part of the taproot and the secondary root system are usually killed12.On well grown plant Small or large initially water soaked and then grayish brown to reddish brown spots which later turn to dark brown appear first on lower leaves. Later on, entire leaf gets blighted in due course.Root rot of adult plant in the form of brown to dark brown discolouration of the cortical and lignified tissues is also common, which is most evident during flowering.Development of a reddish-brown, canker around the base of the stem, easy peeling off cortical tissues of the root and drooping of leaves which remain attached to the dead plant are the other characteristics of this disease .Subsequently, at times patches of dead or dried plants are visible in the field',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Cultivation of moderately disease resistant/tolerant varieties like PK 262,PK 416, PK 472, PK 1042, PK 564, SL 295 etc., specially for aerial blightAvoidance of excess plant population.Seed treatment with thiram + carbendazim (2:1) @ 3 g/kg or with captan @ 3 - 4 g/kg .One spray of carbendazim or thiophanate methyl (0.05%) or mancozeb (0.25%) is found very effective.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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