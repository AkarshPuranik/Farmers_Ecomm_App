import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Cercospora extends StatelessWidget {
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
                'assets/images/cercospora.jpg',
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

                  title: Text('Cercospora Blight', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism:-Cercospora kikuchii (T.Matsu & Tomoyasu) Gardner. The pathogen is seed as well as air borne. It affects Leaves, stems, pods and seeds. Disease is prominently occurring in the states of Madhya Pradesh, Maharashtra, Karnataka and North Eastern States. It can results in 15 to 30% yield loss. Humid and warm weather, specially from flowering to physiological maturity stage favours the infection. Fungus sporulate heavily at the temperature range of 23 to 27 oC. Rainfall 15 days before harvest favours infection and colour development. Longer flowering periods and shortened photoperiods also favour the disease.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On seed and seedling:-Infected seeds may have pink to light purple to dark purple areas ranging from small specks to large blotches covering whole surface. Germination of infected seeds becomes low. Upon germination shrivelled and discoloured cotyledons are produced which fall prematurely. Resulted seedlings may die with in a few days. 2. On well grown plants: At or after the full pod stage, reddish-brown to purple, angular to irregular lesions ranging from tiny spots to large irregular blotches appear on leaves. They may coalesce to form large necrotic areas. Sometimes upper leaves appear light purple, leathery and dark. Blighting of younger upper leaves over large areas is the striking symptom of the disease. Numerous infections cause rapid chlorosis and necrosis of leaf tissues. Veinal necrosis, defoliation from upper young leaves along with early senescence of the plant is also very common.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Use of clean & certified seeds. Cultivation of less susceptible varieties like JS 80-21 and Bragg etc. Seed treatment with thiram + carbendazim (2:1) or captan @ 0.3% and subsequent spray of benomyl @ 0.1% or thiophenate methyl@ 0.05% over infected crop.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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