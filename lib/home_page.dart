import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_appnew/horizontallist.dart';
import 'package:news_appnew/verticallist/post_list.dart';
import 'package:news_appnew/verticallist/post_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.black54,
                  child: Image.asset(
                    'assets/img/1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'WELCOME,',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Ashen Disanayaka,',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 110,
                ),
                Icon(
                  Icons.sort,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search Articals hear...',
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  color: Color(0xff564343),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'HOT NEWS',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontFamily: 'LibreCaslonText',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 180,
                  width: 150,
                  color: Colors.black54,
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color(0xffDFB41B),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            'Read..',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Opening hours \nof Colombo \nLotus Tower\nextended',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'LibreCaslonText',
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        'The Colombo Lotus\nTower Management\nCompany has.... ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'LibreCaslonText',
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            const Text(
              'TOP NEWS ALERT SERVICES SL',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontFamily: 'LibreCaslonText',
              ),
            ),
            Horizontallist(),
            Container(
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
