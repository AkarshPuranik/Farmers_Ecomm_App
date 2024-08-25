import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class charcol extends StatelessWidget {
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
                'assets/images/disease.jpg',
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

                  title: Text('Charcol Rot', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism :-Macrophomina phaseolina (Tassi) Goid., which also causes dry root rot, ashy or stem blight. The pathogen is soil and seed borne. Dry conditions, relatively low soil moisture and nutrients and temperature ranging from 25 oC to 35 oC are favourable for the disease. It can cause up to 77% yield losses under congenial conditions. Disease is common in M.P., Rajasthan, Delhi etc. It is one of the Pathogens responsible for epiphytotic occurred in Guna district of M.P. in 1997 season during seedling stage, which has caused substantial loss to plant stand and yield. It Affects Roots, stems, pods and seeds.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1. Seed and Seedling:-Seed develops black discolouration. Fungus infects the root and stem bases of the plant and disease manifests itself as root rot and wilt. Infected seedlings exhibit reddish brown discolouration at the point of emergence of the hypocotyl. Discolouration in stem is evident at the soil level and above. Seedlings become weak and die prematurely. 2.Well grown plant:-Typical development of charcoal rot with light gray or silvery discoloration of epidermal and sub- epidermal tissues and light brown discolouration of internal tissues of lower stem and upper tap root. Leaves become chlorotic and wilting and drying of plants is apparent leaving very low plant population in the field. External lesions on stem are also produced at later stage. Production of abundant minute black sclerotia beneath the outer corticle tissues and in pith region, which turn to silvery white to light black, is a diagnostic symptom of the disease.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Crop rotation or mixed cropping with cotton or cereals. Timely use of optimum doze of fertilizers. Use of less susceptible varieties like NRC 2, NRC 37, JS 71-05, LSb 1, MACS 13 etc. Maintenance of low plant population in the field where disease appear in severe form to have vigorous plants. Flooding of field 3-4 week before sowing or maintaining high soil moisture by irrigation, if possible, during crop growth. Seed treatment with captan or thiram @ 3 g/kg seed or use of Trichoderma harzianum or T. viride @ 4 to 5 g/kg seed.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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