
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  var imgPath;
  Detail({this.imgPath});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero( // main.dart kısmında da tıklanan öğeyi Hero içine alırsak resimi açtıktan sonra geri gelirse resim güzel bir efekt ile yerine oturu tag: lar aynı olmalı
        tag: widget.imgPath,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(widget.imgPath),fit: BoxFit.cover)
          ),
        ),
      ),
    );
  }
}
