import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Leaf extends StatelessWidget {
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
                'assets/images/leaf_spot.jpg',
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

                  title: Text('Frogeye Leaf Spot', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism:-Cercospora sojina Hara. The pathogen is seed as well as air borne.It affects Stems, foliage, pods and seeds.Most prevalent in Uttaranchal, Himachal Pradesh, Madhya Pradesh and N. E.States.Under congenial conditions it can cause around 22% yield losses.Disease is favoured by warm and wet conditions and appears in severe proportions in seasons with frequent rainfall.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On seed and seedling:- Light to dark gray or brown areas varying from specks to large blotches appear on seed. Sometime cracks or flakes occur in seed coat. Germination is reduced and infected seeds produce week stunted seedlings with brown lesions on the cotyledons.2.On well grown plant:-First symptom normally appear at the time of flowering or two months after planting.Grayish-green water soaked spots which turn to small light brown circular to angular spots appear on leaves and other aerial parts. These spots later on become ashy gray from centre with purplish to dark brown margin',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Removal and burning of crop debris.Use of clean and certified seed and moderately resistant varieties like Bragg, JS 80-21, KHSb 2, VLS 21 etc.Seed treatment with thiram + carbendazim (2:1) @ 0.3%Spray of carbendazim or thiophanate methyl @ 0.05% or zineb or ziram (0.2%)over the infected crop.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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