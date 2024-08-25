import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Fusarium extends StatelessWidget {
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
                'assets/images/fusarium.jpg',
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

                  title: Text('Fusarium Collar and Pod Rot', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism: Fusarium equiseti(Corda) Sacc. is the major and commonly occurring Causal organism of Fusarium pod and collar rot in India. The pathogen is soil and seed borne. (Fusarium oxysporum producing blight, wilt and root rot, F. graminearum, F. moniliforme and F. solani causing pod and collar rot are also reported from India).Fusarium in combination with other soil and seed borne pathogen causes seed and seedling rots.It affects Collar (Stems), pods and seeds.Disease is commonly occurring in the states of Madhya Pradesh, Uttaranchal, Delhi etc.It can cause up to 64% loss in yield. ',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On seed and Seedling:Sometimes seed coat and cotyledons of the seeds may turn dark brown to black.Depressed, water soaked, cream coloured and serrated lesions on cotyledons and hypocotyl of emerging or emerged seedlings. Later on these lesions turned dark brown to black and coalesce with each other.Hypocotyls become thin and soft and roots remain underdeveloped.2.On well grown plant:-Pods dry prematurely from tip to base and become dark brown to blackSeverely infected pods produce no seeds.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('No effective chemical control is available.Field should be well drained.Delay in sowing until soil moisture is adequate help in escaping the disease.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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