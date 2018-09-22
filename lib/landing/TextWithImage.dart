import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWithImage extends StatelessWidget {
  IconData icon;
  String message;

  TextWithImage(this.icon, this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              icon,
              size: Theme.of(context).textTheme.body1.fontSize,
              color: Theme.of(context).textTheme.body1.color,
            ),
          ),
          Text(
            message,
            style: Theme.of(context).textTheme.body1,
          ),
        ],
      ),
    );
  }
}
