import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transparent_image/transparent_image.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String email, name;

  @override
  Widget build(BuildContext context) {
    getSharedPreferences();
    return Card(
        child: SingleChildScrollView(
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: 'https://picsum.photos/400?random',
        ),
        ListTile(
          leading: Icon(Icons.perm_identity),
          title: Text('Name'),
          subtitle: Text('$name'),
        ),
        ListTile(
          leading: Icon(Icons.edit),
          title: Text('Email'),
          subtitle: Text('$email'),
        ),
      ]),
    ));
  }

  getSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      email = prefs.getString('email');
      name = prefs.getString('name');
    });
  }
}
