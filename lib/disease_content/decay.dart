import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Decay extends StatelessWidget {
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
                'assets/images/decay.jpg',
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

                  title: Text('Pod & Stem Blight and'
                      ' Phomopsis Seed Decay ', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism:- Diaporthe phaseolorum (Cke. & EII.) Sacc. var. sojae (Lehman) and phomopsis longicola are two fungi involved in Pod and stem blight disease while other species D. phaseolorum var. caulivora is commonly associated with soybean seed decay and stem canker. However, in India only Diaporthe phaseolorum var. sojae is known to occUr.The pathogen is seed and soil borne.It affects Stems, leaf blades (less frequently), petioles, pods and seeds.It is found to occur commonly in the states of M.P., Uttaranchal, Punjab, Himachal Pradesh and Rajasthan.Soybean maturing under warm and humid conditions may be severely damaged.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On seedling:-Heavily infected seeds crack badly, shrivel and remain covered with dirty white mycelium.Seedlings emerge from infected seeds have seed coat attached to cotyledons preventing proper opening of the cotyledons.Bright red to brown lesions are also produced on cotyledons which may result in seedling blight.2. On well grown plant:-Characteristic symptom is arrangement of black speck sized pycnidia linearly with light brown to whitish background on infected petiole of abscised leaves, broken branches, stems and pods, later in the season.Under favorable conditions infection may appears as premature death of etiolated branches, shedding of leaves and undeveloped pods.Pod blight results in mouldy and light seeds.Leaf infection is rare and latent infection is common.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Ploughing down crop residues.Using healthy seed and crop rotation technique.Use of moderately resistant varieties viz.Bragg, KHSb 2, Himso 1563, JS 71-05, JS80-21, NRC 37, PK 262, VLS 2 etc.Seed treatment with thiram + carbendazim (2:1) @ 3 g/kgMaintenance of adequate potash in the field minimizes the chances of seeds becoming mouldy.Spray of benomyl or thiophanate methyl@ 0.1%.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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