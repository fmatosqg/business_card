import 'package:business_card/landing/TextWithImage.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  @override
  LandingScreenState createState() {
    return new LandingScreenState();
  }
}

class LandingScreenState extends State<LandingScreen>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 3.14 * 2.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });

//    controller
//      ..repeat()
//      ..forward();
  }

  reassemble() {
    super.reassemble();
    controller.forward(from: 0.0);
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Matrix4 transformationMatrix = Matrix4.identity()
      ..rotateZ(animation.value);

    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 10,
              child: Transform(
                  alignment: FractionalOffset.center,
                  transform: transformationMatrix,
                  child: buildLeft(context)),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                width: 1.0,
                color: Color.fromARGB(255, 100, 155, 100),
              ),
            ),
            Expanded(
              flex: 3,
              child: buildRight(),
            ),
          ],
        ),
      )),
    );
  }

  Widget buildLeft(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Fabio de Matos",
          style: Theme.of(context).textTheme.headline,
        ),
        Text(
          "Android Developer",
          style: Theme.of(context).textTheme.subhead,
        ),
        Expanded(
          child: Container(),
        ),
        TextWithImage(Icons.phone, "(+61) 481 114 500"),
        TextWithImage(Icons.email, "amazingappsemail@gmail.com"),
        TextWithImage(Icons.web, "http://amazingdomain.net/bc.html"),
      ],
    );
  }

  Widget buildRight() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(4.0),
          color: Color.fromARGB(10, 0, 100, 0),
          child: Image.asset("assets/qr.png"),
//          child: AssetImage('graphics/background.png'),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          width: 200.0,
//          height: 200.0,
//          color: Color.fromARGB(20, 0, 255, 0),
          child: Text("Tap for NFC"),
        )
      ],
    );
  }

  buildAppBar(BuildContext context) {
    return AppBar(
      title: Row(
        children: <Widget>[
          Text("Fabio's Business Card"),
          Expanded(flex: 1, child: Container()),
          GestureDetector(
            child: Icon(
              Icons.settings,
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("General Information"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("App build with Flutter."),
                          Text(
                              "Flutter is production ready. Read more at https://flutter.io"),
                        ],
                      ),
                      actions: <Widget>[
                        FlatButton(
                            child: Text('Ok'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            })
                      ],
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
