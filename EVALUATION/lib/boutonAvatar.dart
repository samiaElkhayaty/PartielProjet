import 'package:flutter/material.dart';
import 'kConstantes.dart';

class BoutonAvatar extends StatelessWidget {
  final Function onAppui;
  final String titreBouton;

  BoutonAvatar({@required this.onAppui, @required this.titreBouton});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onAppui,
      child: Container(
        child: CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('image/avatar.jpg'),
        ),
      ),
    );
  }
}
