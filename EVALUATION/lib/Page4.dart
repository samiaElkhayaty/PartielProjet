import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/rendering.dart';
import 'kConstantes.dart';
import 'CarteReutilisable.dart';

import 'main.dart';
import 'Page2.dart';
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
      home: Page_4(),
    );
  }
}

class Page_4 extends StatefulWidget {
  @override
  _Page_4 createState() => _Page_4();
}

class _Page_4 extends State<Page_4> {
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
                  height: 200.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 400.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                  margin: EdgeInsets.fromLTRB(65.0, 190.0, 0.0, 0.0),
                  child: Text(
                    'Formation Professionnelle',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 130.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(0.0, 222.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new RichText(
                          text: new TextSpan(children: [
                            new TextSpan(
                              text: 'Stage Cabinet dentaire',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  launch(
                                      'https://www.doctolib.fr/dentiste/cergy/samy-barek');
                                },
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 130.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(0.0, 342.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new RichText(
                          text: new TextSpan(children: [
                            new TextSpan(
                              text: 'PSA - Pilote daffaire en Automatisme',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://www.groupe-psa.com/fr/');
                                },
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 130.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(0.0, 462.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new RichText(
                          text: new TextSpan(children: [
                            new TextSpan(
                              text: 'Institut de la vision',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://www.institut-vision.org/fr/');
                                },
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  width: 190.0,
                  margin: EdgeInsets.fromLTRB(100.0, 600.0, 0.0, 0.0),
                  child: FloatingActionButton(
                      child: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return Page_2();
                          }),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
