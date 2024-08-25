import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class brown extends StatelessWidget {
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
                'assets/images/brown_spot.jpg',
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

                  title: Text('Brown Spot', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism:-Septoria glycines Hemmi.The pathogen is seed and air borne.It affects Stems, Leaves, pods and seeds.In India, the disease is commonly occurring in the states of Himachal Pradesh, Uttaranchal, Madhya Pradesh and North Eastern StatesIt can cause 8-15% yield loss.Warm and humid weather is favourable for the disease. Temperature range of 15-30 oC (optimum is 25 oC) is favourable for the disease development.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On seed and seedling:-The symptoms of the disease are visible as brown minute spots at 30 to 35 days after sowing of the unifoliate leaves of the seedlings.2.On well grown plant:-At pod fill stage, irregular dark brown lesions 1 to 4 mm in diameter appear on both the surfaces of unifoliate as well as trifoliate leaves .These lesions gradually darken until they become chocolate brown to blackish brown. Late in the growing season leaves become rusty brown.As plant approaches to maturity premature defoliation takes place.Rapid and almost yellowing of leaves is characteristic of this disease. Irregular brown lesion with indefinite margin, from small to big specks appear on the main stems, branches, petioles and pods.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Crop rotation with non-legume crop.Burial or burning of infected crop residues during the season and after harvest.Use of healthy seeds of improved varieties.Effective control can be achieved by spray of carbendazim or thiophanate methyl (0.05%) or mancozeb (0.25%) from bloom to pod fill stage.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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