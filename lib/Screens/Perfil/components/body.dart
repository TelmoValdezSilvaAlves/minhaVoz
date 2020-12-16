import 'package:flutter/material.dart';
import 'package:minhavoz/Screens/Perfil/components/background.dart';
import 'package:minhavoz/Screens/Perfil/components/image_banner.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: <Widget>[
          ImageBanner('assets/images/telmo.jpg'),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Text(
            "Nome: ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Container(
            child: Text(
              "Telmo Valdêz da Silva Alves",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Text(
            "Skills: ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.5),
          ),
          Container(
            child: Text(
              "HTML",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.5),
          ),
          Container(
            child: Text(
              "CSS",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.5),
          ),
          Container(
            child: Text(
              "JavaScript",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.5),
          ),
          Container(
            child: Text(
              "PHP",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.5),
          ),
          Container(
            child: Text(
              "MySQL",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.5),
          ),
          Container(
            child: Text(
              "NodeJS - (Iniciante)",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.5),
          ),
          Container(
            child: Text(
              "Flutter - (Iniciante)",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}
