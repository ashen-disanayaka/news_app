import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Color(0xff494737),
        ),
        Image.asset(
          'assets/img/bg1.png',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
          color: Colors.yellow.withOpacity(0.6),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Center(
                    child: Container(
                      color: Color(0xffD9D9D9),
                      height: 40,
                      width: 40,
                      child: Image.asset('assets/img/logo.png'),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    ' SL News',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'FIRST',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffB7951F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 130,
              ),
              Text(
                'Latest',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.white,
                  fontFamily: 'LibreCaslonText',
                ),
              ),
              SizedBox(height: 6,),
              Text(
                'News',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'LibreCaslonText',
                ),
              ),
              SizedBox(height: 6,),
              Text(
                'in Sri Lanka',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.white,
                  fontFamily: 'LibreCaslonText',
                ),
              ),
              SizedBox(height: 35,),
              Text('Brows the latest hot news and best\narticals around  the world',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 140,
                    color: Color(0xffDFB41B),
                    child: Center(
                      child: Text('Get Started',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    color: Color(0xffB9920A),
                    child: Icon(Icons.arrow_forward,),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Image.asset('assets/img/Untitled-1.png',height: 150, width: 350,)
            ],
          ),
        ),
      ],
    );
  }
}
