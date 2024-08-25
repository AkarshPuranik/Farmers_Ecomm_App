import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Pod extends StatelessWidget {
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
                'assets/images/pod_blight.jpg',
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

                  title: Text('Anthracnose & Pod Blight', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism:-Colletotrichum de-matium f.sp. truncatum or Colletotrichum truncatum (Schw.) Andrus & W. D. Moore. The pathogen is highly seed borne. It affects Stems, petioles, leaves and seeds. Anthracnose is visible throughout the soybean growing states of India. It generally causes 16 to 25% damage but sometimes loss in yield can be up to 100% specially when disease appears in severe form during seedling stage. Warm weather (temperature around 35 C) coupled with rain, dew or fog, which can provide free moisture for the periods of 12 hr. or more favours the infection of disease.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.Seed and Seedling: Infected seed becomes shriveled, mouldy and brown. Pre-and post emergence damping off/ mortality may occur when infected seeds are planted. Symptoms on cotyledons appear as dark brown sunken cankers. 2.Well grown plant:-Crop is attacked at all stages of growth but symptoms are evident in the early reproductive stage on stems, petioles and pods. Generally, irregular reddish to dark brown areas appear on infected parts first on the stem. Later on these are covered by black fungal fruiting bodies (acervuli) with setae (minute black spines), which can be seen by unaided eye. These setae are diagnostic character of the disease.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Use of clean and healthy seeds. Burning of infected plant debris.Cultivation of moderately resistant varieties like Bragg, Himso 1563, Hardee, PK 472, JS 80-21, Pusa 37, VLS 21, NRC 12 etc. Seed treatment with thiram  +carbendazim (2:1) or captan @ 3g/Kg seed and spray of zineb or mancozeb 0.2% on infected crop.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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