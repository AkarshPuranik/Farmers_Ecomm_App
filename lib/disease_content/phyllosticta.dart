import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Phyllosticta extends StatelessWidget {
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
                'assets/images/phyllosticta.jpg',
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

                  title: Text('Phyllosticta Leaf Spot', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism:-Disease is caused by Phyllosticta sojicola Massal or P. glycineaTehon & Daniels.The pathogen is seed and air borne.It affects Stems, leaves, petioles and pods.In India disease is common in Delhi, Madhya Pradesh, Uttar Pradesh, Uttaranchal and Rajasthan.Disease is considered of minor economic importance. Major share of loss is caused on the account of severe defoliation.Cool and moist weather is favourable for the disease',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On seed and seedling:-Seeds may develop brown specks or spots and become small and shrivelled. 2.On well grown plant:-Pale green to dull gray small, round, oval to irregular spots with a narrow dark brown or purplish border appear on the margin of leaf lamina of younger leaves .Usually only the first few trifoliate leaves are affected.These gradually coalesce, enlarge and progress inwards to form an irregular V-shaped area turning brown to dark brown in colour.When the spots grew older, numerous small black specks (pycnidia) form in older leaves. Severe defoliation can also occur. Fungus may progress to stem, stipules and petiole as superficial grey to almost white lesions with narrow purplish to brown border. Disease can also cause large lesions with dark purplish borders surrounding lighter, brownish centers on pods on which numerous dark pycnidia develop. Seeds beneath the pod lesions may also be infected.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Crop rotation with non legume crop Use of disease free and clean seed.Deep ploughing to bury crop residues.Spray of carbendazim or thiophanate methyl (0.05%) at the time of appearance of the disease.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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