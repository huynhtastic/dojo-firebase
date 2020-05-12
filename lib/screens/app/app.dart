import 'package:flutter/material.dart';
import 'package:the_dojo/models/brew.dart';
import 'package:the_dojo/services/authentication.dart';
import 'package:the_dojo/services/database.dart';
import 'package:provider/provider.dart';

import 'brew_list.dart';

class App extends StatelessWidget {
  final _auth = AuthenticationService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      catchError: (_, err) {
        print(err.toString());
        return [
          Brew(
            name: '',
            strength: 100,
            sugars: '',
          )
        ];
      },
      child: Scaffold(
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
        body: BrewList(),
      ),
    );
  }
}
