import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('About me'),
        backgroundColor: Colors.teal[900],
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/sung.png'),
            ),
            Text(
              "Brian Muñoz",
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Custom"),
            ),
            Text(
              "Software Developer",
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sans serif"),
            ),
            SizedBox(
              height: 20,
              width: 250,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            // CARD TELEFONO
            Card(
                // height: 50,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    "+52 XXXXXXXXXXX",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            SizedBox(
              height: 25,
            ),
            // CARD EMAIL
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  "XXXXXXXXX@gmail.com",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
