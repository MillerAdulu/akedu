import 'package:flutter/material.dart';

import 'package:app/auth/register.dart';
import 'package:app/auth/login.dart';
import 'package:app/screens/navigation.dart';



final routes = <String, WidgetBuilder> {
  '/login': (BuildContext context) => Login(),
  '/register': (BuildContext context) => Register(),
  '/navigation': (BuildContext context) => Navigation(),
};