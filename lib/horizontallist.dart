import 'package:flutter/material.dart';

class Horizontallist extends StatefulWidget {

  @override
  State<Horizontallist> createState() => _HorizontallistState();
}

class _HorizontallistState extends State<Horizontallist> {
  @override
  Widget build(BuildContext context) {
    Widget horizontalList = Container(
        height: 120.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(width: 130.0, color: Color(0xffD9D9D9),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/img/derana.png',

                ),
              ),
            ),
            const SizedBox(width: 8,),
            Container(width: 130.0, color: Color(0xffD9D9D9),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/img/newsfirst.jpg',

                ),
              ),
            ),
            const SizedBox(width: 8,),
            Container(width: 130.0, color: Color(0xffD9D9D9),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/img/hirunews.webp',

                ),
              ),
            ),
            const SizedBox(width: 8,),
            Container(width: 130.0, color: Color(0xffD9D9D9),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/img/siyatha.jpg',

                ),
              ),
            ),
          ],
        )
    );
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 140,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          horizontalList,

        ],
      ),
    );
  }
}
