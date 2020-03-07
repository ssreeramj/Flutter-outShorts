import 'dart:ui';

import 'package:flutter/material.dart';

import 'news.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TopImageWidget(),
                  TitleWidget(),
                  DescriptionWidget(),
                  MutedTextWidget(),
                  SizedBox(height: 14),
                ],
              ),
            ),
            BottomPart()
          ],
        ),
      ),
    );
  }
}

class BottomPart extends StatelessWidget {
  const BottomPart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
          // height: 79,
          decoration: BoxDecoration(
            // color: Colors.black,
            image: DecorationImage(
                image: AssetImage('assets/capricorn_4427336__340.jpg'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
            color: Colors.black,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10,
              ),
              child: Container(
                  alignment: Alignment.bottomLeft,
                  color: Colors.black.withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Amul is the most elastic band underwear',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white70,
                                letterSpacing: 0.3)),
                        Text('Tap to know more here',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                              letterSpacing: 0.3,
                              fontWeight: FontWeight.w300,
                              height: 1.3,
                            ))
                      ],
                    ),
                  )),
            ),
          )),
    );
  }
}

class MutedTextWidget extends StatelessWidget {
  const MutedTextWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: Text(mutedText,
          textAlign: TextAlign.start,
          style: TextStyle(fontWeight: FontWeight.w200, fontSize: 12)),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          description,
          style: TextStyle(
              // fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.w300,
              height: 1.5,
              letterSpacing: 0.8),
        ));
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Text(
        title,
        style: TextStyle(
          // fontFamily: 'Montserrat',
          fontSize: 19,
        ),
      ),
    );
  }
}

class TopImageWidget extends StatelessWidget {
  const TopImageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      // width: MediaQuery.of(context).size.width,
      child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          child: Image.asset(
            'assets/capricorn_4427336__340.jpg',
          )),
    );
  }
}
