import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'kConstantes.dart';
import 'CarteReutilisable.dart';
import 'Page3.dart';
import 'Page4.dart';
import 'Page5.dart';
import 'Page6.dart';
import 'main.dart';

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
      home: Page_2(),
    );
  }
}

class Page_2 extends StatefulWidget {
  @override
  _Page_2 createState() => _Page_2();
}

class _Page_2 extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/fond.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  height: 190.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('images/avatar.png'),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return Avatar();
                              }),
                            );
                          },
                          //child : Icon(Icons.arrow_forward),
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
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 300.0,
                  margin: EdgeInsets.fromLTRB(110.0, 170.0, 0.0, 0.0),
                  child: Text(
                    'Curriculum Vitae',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 200.0,
                  width: 180.0,
                  margin: EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Académique',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return Page_3();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200.0,
                  width: 200.0,
                  margin: EdgeInsets.fromLTRB(200.0, 200.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Professionnel',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return Page_4();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200.0,
                  width: 180.0,
                  margin: EdgeInsets.fromLTRB(0.0, 400.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Langues',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return Page_5();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200.0,
                  width: 200.0,
                  margin: EdgeInsets.fromLTRB(200.0, 400.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Autres',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return Page_6();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
