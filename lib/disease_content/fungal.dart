import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gee_com/disease_content/aristastoma.dart';
import 'package:gee_com/disease_content/brown%20spot.dart';
import 'package:gee_com/disease_content/cercospora.dart';
import 'package:gee_com/disease_content/charcol.dart';
import 'package:gee_com/disease_content/choanephora.dart';
import 'package:gee_com/disease_content/collar.dart';
import 'package:gee_com/disease_content/decay.dart';
import 'package:gee_com/disease_content/fusarium.dart';
import 'package:gee_com/disease_content/leaf.dart';
import 'package:gee_com/disease_content/myrothecium.dart';
import 'package:gee_com/disease_content/phyllosticta.dart';
import 'package:gee_com/disease_content/pod.dart';
import 'package:gee_com/disease_content/powdery.dart';
import 'package:gee_com/disease_content/root.dart';
import 'package:gee_com/disease_content/rust.dart';
import 'package:gee_com/disease_content/stem.dart';
import 'package:gee_com/disease_content/target.dart';


class Fungal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text('Fungal Diseases'),
      ),
      body:
      ListView(
        scrollDirection: Axis.vertical,
        children: [
          _buildViralItem(
            context,
            'Charcol Rot',
            'assets/images/disease.jpg',
            charcol(),


          ),
          _buildViralItem(
            context,
            'Collar Rot or Sclerotial Blight',
            'assets/images/collar_rot.jpg',
            Collar(),
          ),
          _buildViralItem(
            context,
            'Sclerotinia Stem Rot',
            'assets/images/stem_rot.jpg',
            Stem(),
          ),
          _buildViralItem(
            context,
            'Anthracnose & Pod Blight',
            'assets/images/pod_blight.jpg',
            Pod(),
          ),
          _buildViralItem(
            context,
            'Rust',
            'assets/images/rust.jpg',
            Rust(),
          ),
          _buildViralItem(
            context,
            'Cercospora Blight',
            'assets/images/cercospora.jpg',
            Cercospora(),
          ),
          _buildViralItem(
            context,
            'Frogeye Leaf Spot',
            'assets/images/leaf_spot.jpg',
            Leaf(),
          ),
          _buildViralItem(
            context,
            'Pod & Stem Blight and'
                ' Phomopsis Seed Decay  ',
            'assets/images/decay.jpg',
            Decay(),
          ),
          _buildViralItem(
            context,
            'Fusarium Collar and Pod Rot',
            'assets/images/fusarium.jpg',
            Fusarium(),
          ),
          _buildViralItem(
            context,
            'Myrothecium Leaf Spot',
            'assets/images/myrothecium.jpg',
            Myrothecium(),
          ),
          _buildViralItem(
            context,
            'Root Rot, Stem Rot'
                ' & Aerial Blight',
            'assets/images/root_rot.jpg',
            Root(),
          ),
          _buildViralItem(
            context,
            'Brown Spot',
            'assets/images/brown_spot.jpg',
            brown(),
          ),
          _buildViralItem(
            context,
            'Phyllosticta Leaf Spot',
            'assets/images/phyllosticta.jpg',
            Phyllosticta(),
          ),
          _buildViralItem(
            context,
            'Choanephora Leaf Blight',
            'assets/images/choanephora.jpg',
            Choanephora(),
          ),

          _buildViralItem(
            context,
            'Aristastoma Leaf',
            'assets/images/aristastoma.jpg',
            Aristastoma(),
          ),
          _buildViralItem(
            context,
            'Powdery Mildew',
            'assets/images/mildew.jpg',
            Powdery(),
          ),
          _buildViralItem(
            context,
            'Target Leaf Spot',
            'assets/images/target.jpg',
            Target(),
          ),
        ],
      ),
    );
  }

  Widget _buildViralItem(
      BuildContext context,
      String title,
      String imagePath,
      Widget page,
      )
  {
    return GestureDetector(

      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),

        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(

            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: 300,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}