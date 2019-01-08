import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Gesture Detector"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.alarm),

          )
        ],
      ),
      body: new Center(
        child: new CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: () {
          final snackBar = new SnackBar(
            content: new Text("Hi! i am tapped"),
            backgroundColor: Theme.of(context).accentColor,
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: new Container(
          padding: EdgeInsets.all(20),
          decoration: new BoxDecoration(
              color: Theme.of(context).buttonColor,
              borderRadius: BorderRadius.circular(10)),
          child: new Text(
            "Tap Me",
            style: new TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ));
  }
}
