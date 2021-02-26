import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _usercontroller = new TextEditingController();
  TextEditingController _passcontroller = new TextEditingController();

  String _welcome = "";

  void _clear() {
    setState(() {
      _usercontroller.clear();
      _passcontroller.clear();
    });
  }

  void _sub() {
    setState(() {
      if (_usercontroller.text.isNotEmpty && _passcontroller.text.isNotEmpty) {
        _welcome = _usercontroller.text;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("login app"),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.white,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            new Image.asset(
              'images/logo.png',
              width: 90.0,
              height: 90.0,
            ),
            new Container(
              height: 100,
              width: 380,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _usercontroller,
                    decoration: new InputDecoration(
                        hintText: 'usename', icon: new Icon(Icons.person)),
                  ),
                  new TextField(
                    controller: _passcontroller,
                    decoration: new InputDecoration(
                        hintText: 'password', icon: new Icon(Icons.lock)),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(21.0),
                  ),
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                            margin: const EdgeInsets.only(left: 37.6),
                            child: new RaisedButton(
                              onPressed: _sub,
                              child: new Text(
                                "submit",
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.6,
                                ),
                              ),
                              color: Colors.redAccent,
                            )),
                        new Container(
                            margin: const EdgeInsets.only(left: 137.6),
                            child: new RaisedButton(
                              onPressed: _clear,
                              child: new Text(
                                "clair",
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.6,
                                ),
                              ),
                              color: Colors.redAccent,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            new Container(
              alignment: Alignment.center,
              child: new Text('welcome.$_welcome',
                  style: new TextStyle(color: Colors.red)),
            )
          ],
        ),
      ),
    );
  }
}
