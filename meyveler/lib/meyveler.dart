import 'package:flutter/material.dart';

class Meyveler extends StatefulWidget {
  @override
  _MeyvelerState createState() => _MeyvelerState();
}

class _MeyvelerState extends State<Meyveler> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                getMeyveCard('assets/picone.jpeg', 'portakal', '3', false),
                getMeyveCard('assets/pictwo.jpeg', 'kivi', '5.5', true),
                getMeyveCard('assets/picthree.jpeg', 'muz', '6', false),
                SizedBox(height: 15.0,),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 25.0,),
                getMeyveCard('assets/picfour.jpeg', 'ananas', '2.75', true),
                getMeyveCard('assets/picfive.jpeg', 'limon', '2.5', false),
                getMeyveCard('assets/picone.jpeg', 'muz', '6', true),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget getMeyveCard(String imgPath, String meyveName, String fiyat, bool isFav){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: 200.0,
        width: (MediaQuery.of(context).size.width / 2) - 20.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: isFav ? Icon(Icons.favorite,color:Colors.red) : Icon(Icons.favorite_border,color:Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0,),
            Text(
              meyveName,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              fiyat+' ₺ kilosu',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

    );
  }
}