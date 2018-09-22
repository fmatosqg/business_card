import 'package:business_card/landing/TextWithImage.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: buildLeft(),
            ),
            Expanded(
              flex: 1,
              child: buildRight(),
            ),
          ],
        ),
      )),
    );
  }

  Widget buildLeft() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Fabio de Matos"),
        Text("Android Developer"),
        Padding(
          padding: const EdgeInsets.all(40.0),
        ),
        TextWithImage(Icons.phone, "(+61) 481 114 500"),
        TextWithImage(Icons.phone, "(+61) 481 114 500"),
        TextWithImage(Icons.phone, "(+61) 481 114 500"),
      ],
    );
  }

  Widget buildRight() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: 200.0,
          height: 200.0,
          color: Color.fromARGB(255, 0, 255, 0),
          child: Text("NFC"),
        )
      ],
    );
  }
}
