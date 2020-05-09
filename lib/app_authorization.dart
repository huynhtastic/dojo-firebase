import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';
import 'screens/authentication/authentication.dart';
import 'screens/app/app.dart';
import 'services/authentication.dart';

class AppAuthorization extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return StreamProvider<User>.value(
      value: AuthenticationService().user,
      child: MaterialApp(
        home: Authentication(),
      ),
    );
  }
}
