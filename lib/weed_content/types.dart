


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Types extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Weed Images',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.normal),),backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ), ),
        body:


        ListView(
          children: [
            Card(
              child: Column(
                children: [
                  Image.asset('assets/images/weed.jpg'),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Commelina Benghalensis(Bokna)'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image.asset('assets/images/cy.jpg'),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cyanotis Axillaris(Diwalia)'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image.asset('assets/images/cyper.jpg'),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cyperus Rotundus(Motha)'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image.asset('assets/images/dig.jpg'),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Digera Arvensis(Phoolni)'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image.asset('assets/images/cru.jpg'),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Echinochloa Cru-Sgalli(Sanwa)'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image.asset('assets/images/geni.jpg'),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Euphorbia Geniculata(Dudhi)'),
                  ),
                ],
              ),
            ),
          ],
        )




    );
  }
}
