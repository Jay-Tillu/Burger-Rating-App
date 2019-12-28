import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffad1457),
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f),
        title: Text("Burger Rating"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSebq3BUtxk6YVIGR3M0548ShXbcithAEwccP0_zalTZmURp0lp&s",
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            rating.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 70,
              fontWeight: FontWeight.bold,
            ),
          ),
          RatingBar(
            filledColor: Colors.white,
            onRatingChanged: (newValue) {
              setState(() {
                rating = newValue.round();

              });
            },
            halfFilledIcon: Icons.sentiment_neutral,
            filledIcon: Icons.star,
            emptyIcon: Icons.star_border,
          ),
        ],
      ),
    );
  }
}
