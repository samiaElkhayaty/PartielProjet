import 'package:flutter/material.dart';
import 'Page2.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Evaluation',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Avatar(),
    );
  }
}

class Avatar extends StatefulWidget {
  @override
  _Avatar createState() => _Avatar();
}

class _Avatar extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/fond.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              FlatButton(
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return Page_2();
                    }),
                  );
                },
              ),
              Text(
                'Samia ELKHAYATY',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Etudiante Ingénieur',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 15.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    size: 20.0,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    "+33 6 58 90 95 58",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 20.0,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    "elkhayatysamia@gmail.com",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
