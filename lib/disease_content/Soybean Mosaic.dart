import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Mosaic extends StatelessWidget {
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
                'assets/images/mosaic.jpg',
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

                  title: Text('Soybean Mosaic', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Causal Organism: Soybean mosaic virus causes the disease.The virus is a flexuous rod belongs to potyvirus group and is seed, graft and sap transmitted.Disease has a narrow host range and being transmitted in a non-persistent manner by about 32 aphid species belonging to 15 different genera.It affects Seedlings, leaves, stems, petioles, pods and seeds.The disease is occurring all over the soybean growing areas of India.It can reduce yields ranging from 50 to 93%. Losses ranging from 2-30% have been reported from Delhi.Symptoms are more severe with cool temperature (near 18 oC) and humid condition but less severe at 24-25 oC, while symptoms are masked above 30 oC.Way of expression of disease depends on virus strain, host genotype, environmental conditions and presence of other complementary viruses.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('1.On seed and seedling:-Infected seeds many times get mottled by having the same colour on seed coat as that of hilum, which is popularly known as hilum bleeding.When infected seeds are used for sowing, the initial symptoms of theDisease are severe mosaic of dark and light green areas and downward curling of primary leaves giving seedlings spindly appearance.Such plants have rugosed, crinkled, mottled and curled unifoliate leaves.Subsequently trifoliate leaves become chlorotic, severely stunted, mottled and rugosed.Plants get stunted with shortened petioles and internodes'
                            '.2. On well grown plant:-Trifoliate leaves have a mosaic of light and dark green areas that may later become raised or blistered mostly along the main veins . Dark green enations along the puckered leaves and necrosis are also occasionally present .Browning may also visible in stems and petioles.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Pre sowing soil application of phorate @10kg/ha.Use of moderately resistant varieties likeJS 71-05, KHSb 2, LSb 1, MACS 58, MACS 124, PK 416, PK 564, Punjab 1, VLS 2 etc.Cultivation of 2 to 3 or more varieties and change of varieties at least after every two years.Two foliar sprays of thiamethoxam 25WG @ 100 g/ or methyl demeton 800ml/ ha at 30 and 45 days after sowing.Weed free clean cultivation.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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