import 'package:flutter/material.dart';
import 'package:the_dojo/services/authentication.dart';

class App extends StatelessWidget {
  final _auth = AuthenticationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('The Dojo'),
        elevation: 0.0,
        backgroundColor: Colors.brown[400],
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Logout'),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
    );
  }
}
