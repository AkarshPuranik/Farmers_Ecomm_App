import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Pustule extends StatelessWidget {
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
                'assets/images/pustule.jpg',
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

                  title: Text('Bacterial Pustule', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism :- Xanthomonas ax-onopodis pv. glycines Syn. Xanthomonas campestris pv. glycines (Nakano) Dye.It affects Leaves, stems, pods and seeds.Distributed throughout soybean growing areas of India but more prevalent in the states of Madhya Pradesh, Rajasthan, Himachal Pradesh, Uttaranchal and North Eastern States.The disease have got the potential to cause 15-53% loss but in India maximum yield losses can go up to 37% with an average loss of 20% under favourable conditions. The loss is mainly accounted to defoliation, production of empty pod and reduction in number and seed size.Warm (temperature around 280C and humid weather with frequent showers favours the disease. Unlike bacterial blight, bacterial pustule is not checked by high temperature.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On well grown plant:-Disease appear as minute, pale green elevated spots on interveinal areas on both sides of the leaves .Later on small raised light gray to yellowish pustules are formed in the center of spots usually on the undersurface with a pale green halo around them.The pustules may coalesce in to large spots.Leaves become ragged when dead areas are torn away by wind.Spots may also develop on pods of susceptible variety.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Destruction of diseased crop residues/ debris and deep summer ploughing.Use of disease free and clean seed harvested from healthy plants for cultivation.Cultivation of resistant varieties like PK327, PK 416, PK 1029, PK 1042, JS 71-05, JS 90-41, Bragg, Himso 1563, Indira soya 9, KHS 2, MAUS 32, NRC 7, NRC 37, SL96, VLS 2 etc.Seed treatment with Streptocycline @500 mg/kg seed and spray of copper-oxychloride (1.6 kg) + Streptocycline (160g) or Kasugamycin/Validamycin (1.6 kg) + copper-oxy chloride (1.6 kg) in 800 litre of water/ha.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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