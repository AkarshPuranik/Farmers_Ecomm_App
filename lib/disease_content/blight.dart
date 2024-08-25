import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Blight extends StatelessWidget {
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
                'assets/images/blight.jpg',
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

                  title: Text('Bacterial Blight', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism : Pseudomonas savastanoi (P. syringae) pv. glycinea (Coerper.) Young. Dye & Wilkie (Syn. P. glycinea. Coerper).The bacterium is seed and air borne.It affects Stems, leaves, petioles and pods.The disease is commonly occurring in the states of Madhya Pradesh, Maharashtra, Himachal Pradesh, Uttaranchal and North East States.Losses ranging from 5 to 18% are known mainly on account of loss of leaf area during the reproductive stage of soybean.Cool and rainy weather favours the disease but it also occurs in warmer regions. High temperature and dry weather curb the disease.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1On seed and seedling:-Infected stored seeds may develop raised or sunken lesions and become shriveled and slightly discoloured.If, infected seeds are used for sowing or infection is at an early stage then seedlings remain stunted and even die if growing point is infected. Lesions may also appear on the margin of the cotyledons.'
                            '2.On well grown plant:-Small, angular, translucent, water soaked yellow to light brown spots appear on leaves.Center of spots soon dry out and spots turn reddish brown to black.These spots remain surrounded by water soaked margin and bordered by a yellowish green halo.On the underside of the leaf they glisten when wet.Heavy infection of young leaves may produce general chlorosis.In the later phase central portion of the older spots drop out or tear away so leaves appear ragged or shredded.Small or large water soaked lesions also occur on stems,petioles and pods.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Pathogen free seed should be used for cultivation.Infected residues of preceding crop should be burnt.Use of varieties having good resistance viz. Bragg, VLS 2, Shivalik, Himso 1563, KHSb 2, PK 262, JS 71-05, JS 72-280, JS 335 etc.Foliar spray of copper oxychloride(0.2%) + streptocycline (0.02%) at time of appearance of disease.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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