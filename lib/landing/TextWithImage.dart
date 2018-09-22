import 'package:flutter/cupertino.dart';

class TextWithImage extends StatelessWidget {
  IconData icon;
  String message;

  TextWithImage(this.icon, this.message);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(
            icon,
            size: 24.0,
          ),
        ),
        Text(message),
      ],
    );
  }
}
