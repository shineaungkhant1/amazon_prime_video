import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AmazomPrimeHomePage(),
  ));
}

class AmazomPrimeHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.network(
          'https://assets.stickpng.com/thumbs/5f4924f968ecc70004ae7066.png',
          width: 70,
          height: 70,
        ),
        backgroundColor: Color.fromRGBO(14, 22, 30, 1.0),
        leading: TextButton(
          onPressed: () {
            print("Back Button Tap");
          },
          child: Text(
            "Back",
            style: TextStyle(
                color: Color.fromRGBO(3, 122, 185, 1.0),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                print("Refresh Button Tap");
              })
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 9),
        color: Color.fromRGBO(14, 22, 30, 1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              "Create account",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                  hintText: "Name",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  )),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                  hintText: "Your email address",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  )),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1.0),
                  hintText: "Create a password",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  )),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                  children: <InlineSpan>[
                    WidgetSpan(
                        child: Icon(Icons.info_outline,size: 15,
                            color: Colors.white)
                    ),
                    TextSpan(text:"Password must be at least 6 characters")
                  ]
              ),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,

              child:TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(12, 120, 175, 1.0)
                ),
                onPressed: () {
                  print("Create your Amazon account Button tap.");
                },
                child: Text(
                  "Create your Amazon account",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "By creating an account, you agree to the Prime Video Terms of Use and license agreements which can be found on the Amazon website.",
              style: TextStyle(
                  color: Color.fromRGBO(98, 117, 128, 1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 85),
              child:TextButton(
                onPressed: () {
                  print("Already have an account Button tap.");
                },
                child: Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Container(
            width: double.infinity,
              child:TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(65, 81, 101, 1.0)
                ),
                onPressed: () {
                  print("Sigin-in now Button tap.");
                },
                child: Text(
                  "Sigin-in now",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 100,),
            Container(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                      children: <InlineSpan>[
                        WidgetSpan(
                            child: Icon(Icons.copyright,size: 15,
                              color: Color.fromRGBO(65, 81, 101, 1.0),)
                        ),
                        TextSpan(text:"1996-2021,Amazon.com, Inc. or its affilliates")
                      ]
                  ),
                  style: TextStyle(
                      color: Color.fromRGBO(65, 81, 101, 1.0),
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
