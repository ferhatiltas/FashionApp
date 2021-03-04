import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moda_app/detail.dart';

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
    return _AnaSayfaState();
  }
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search_off,
                color: Colors.black,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.perm_identity_rounded,
                color: Colors.black,
                size: 25,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade700,
        elevation: 0,
        title: Text(
          "FashionApp",
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
            color: Colors.grey.shade200,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg',
                    'assets/model1.jpeg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg',
                    'assets/model2.jpeg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png',
                    'assets/model3.jpeg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model4.jpg', 'assets/chanellogo.jpg',
                    'assets/model4.jpg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model1.jpeg', 'assets/louisvuitton.jpg',
                    'assets/model1.jpeg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model2.jpeg', 'assets/chloelogo.png',
                    'assets/model2.jpeg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png',
                    'assets/model3.jpeg'),
                SizedBox(
                  width: 20,
                ),
                listeElemani('assets/model4.jpg', 'assets/chanellogo.jpg',
                    'assets/model4.jpg'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 8,
              color: Colors.grey.shade200,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/model4.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          // genişliği dinamik hale getiriyoruz
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "36 mins ago",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 40,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "This offical website features a ribbed knit zipper jacket that is"
                      "modern and stylish. It looks very vemparament and is recommend to friends.",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          // Tıklanma özelliği kazandrımak için InkWell içine al
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Detail(imgPath: 'assets/modelgrid3.jpeg')));
                          },
                          child: Hero(
                            // main.dart kısmında da tıklanan öğeyi Hero içine alırsak resimi açtıktan sonra geri gelirse resim güzel bir efekt ile yerine oturu tag: lar aynı olmalı
                            tag: 'assets/modelgrid3.jpeg',
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/modelgrid3.jpeg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            InkWell(
                              // Tıklanma özelliği kazandrımak için InkWell içine al
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detail(
                                        imgPath: 'assets/modelgrid1.jpeg')));
                              },
                              child: Hero(
                                // main.dart kısmında da tıklanan öğeyi Hero içine alırsak resimi açtıktan sonra geri gelirse resim güzel bir efekt ile yerine oturu tag: lar aynı olmalı
                                tag: 'assets/modelgrid1.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid1.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              // Tıklanma özelliği kazandrımak için InkWell içine al
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detail(
                                        imgPath: 'assets/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                // main.dart kısmında da tıklanan öğeyi Hero içine alırsak resimi açtıktan sonra geri gelirse resim güzel bir efekt ile yerine oturu tag: lar aynı olmalı
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid2.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.deepOrange.shade300),
                          child: Center(
                            child: Text(
                              "# Louis Vuitton",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.deepOrange.shade300),
                          child: Center(
                            child: Text(
                              "# Chloe",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.send,
                          size: 30,
                          color: Colors.blue.shade700,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "164",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade700),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.add_comment_outlined,
                          size: 30,
                          color: Colors.green.shade700,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "679",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade700),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 30,
                              color: Colors.red.shade900,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "3.7k",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey.shade700),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 8,
              color: Colors.grey.shade200,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/model2.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          // genişliği dinamik hale getiriyoruz
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Abigail ",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "12 mins ago",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 40,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "This offical website features a ribbed knit zipper jacket that is"
                      "modern and stylish. It looks very vemparament and is recommend to friends.",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          // Tıklanma özelliği kazandrımak için InkWell içine al
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Detail(imgPath: 'assets/model4.jpg')));
                          },
                          child: Container(
                            height: 200,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage('assets/model4.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            InkWell(
                              // Tıklanma özelliği kazandrımak için InkWell içine al
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        Detail(imgPath: 'assets/model3.jpeg')));
                              },
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage('assets/model3.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              // Tıklanma özelliği kazandrımak için InkWell içine al
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        Detail(imgPath: 'assets/model1.jpeg')));
                              },
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage('assets/model1.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.deepOrange.shade300),
                          child: Center(
                            child: Text(
                              "# Louis",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.deepOrange.shade300),
                          child: Center(
                            child: Text(
                              "# Chloe",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.send,
                          size: 30,
                          color: Colors.blue.shade700,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "86",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade700),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.add_comment_outlined,
                          size: 30,
                          color: Colors.green.shade700,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "321",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade700),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 30,
                              color: Colors.red.shade900,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "1.7k",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey.shade700),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  listeElemani(String imagePath, String logoPath, String logoClick) {
    // listeyi oluşturup elemanları elle ekleyeceğiz
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              // Tıklanma özelliği kazandrımak için InkWell içine al
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Detail(imgPath: logoClick)));
              },
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover),
                ),
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
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue.shade700),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  fontSize: 17,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
