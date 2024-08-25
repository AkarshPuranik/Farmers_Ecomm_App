import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class phyllody extends StatelessWidget {
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
                'assets/images/phyllody.jpg',
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

                  title: Text('Phyllody Associated No '
                  'Podding Syndrome', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism:- PhytoplasmaThe causal agent is Phytoplasma usually transmitted by leaf hoppers.It affects Flower buds, flower, stems, pods and seeds.Disease is wide spread but more common in Madhya Pradesh.Disease can results in 20-30% loss in yield.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On well grown plant:-Symptoms generally appear either at the time of flowering or beginning of pod formation.Infected plants may have excessive branching, stem with short internodes, stunted growth and profuse bud proliferation.Floral organs of such plants transform into leaf-like structures known as phyllody.Plants may bear pods or pods are scanty with no seed or small wrinkled seed.Delayed senescence as plant such plants remain green fore more time than the healthy ones.Premature green pods express in-situ seed germination.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Sprays of chlorpyrifos 1.5 lit. or triazophos 800 ml or methomyl 1 kg or ethion 1.5 lit. or quinalphos 1.5 lit. or ethofenprox 1 lit. per hectare at 18-20and at 28-30 days after sowing (spray solution required is 800 lit./ha) for hot spot areas. In other areas one spray at28-30 days after sowing.The other recommended package of practices as mentioned below should also be followed :1. Soil application of Phorate 10 G @ 1 kga.i./ha at the time of planting.2.Seeds from affected fields are not to be used for sowing purpose.3.Use of optimum seed rates (65 to 80 kg/ha for small and bold seeded varieties, respectively) to avoid the high plant population, which acts as predisposing factor for insect incidence.4.If possible, avoid cultivation of crops such as sun-hemp and sesame, which may harbour insect vectors and phytoplasma.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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