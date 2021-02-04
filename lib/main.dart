import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AnaSayfaState();
  }
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade700,
        elevation: 0,
        title: Text(
          "Moda App",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.camera_alt,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.grey,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model4.jpg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model1.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model4.jpg', 'assets/chanellogo.jpg'),
              ],
            ),
          )
        ],
      ),
    );
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.blue.shade900),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
               fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat', fontSize: 17, color: Colors.white
              ),
            ),
          ),
        )
      ],
    );
  }
}
