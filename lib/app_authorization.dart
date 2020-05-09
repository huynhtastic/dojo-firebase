import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';
import 'screens/authentication/authentication.dart';
import 'screens/app/app.dart';

class AppAuthorization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return user == null ? Authentication() : App();
    // return MaterialApp(
    //   home: Authentication(),
    // );
  }
}
