import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_authorization.dart';
import 'models/user.dart';
import 'services/authentication.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthenticationService().user,
      child: MaterialApp(
        home: AppAuthorization(),
      ),
    );
  }
}

void main() => runApp(Main());
