import 'package:flutter/material.dart';

import 'auth/login.dart';
import 'utils/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akedu',
      home: Scaffold(
          appBar: AppBar(title: Text('Akedu')), body: Center(child: Login())),
      routes: routes,
    );
  }
}
