import 'package:flutter/material.dart';
import 'package:validate/validate.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:progress_hud/progress_hud.dart';

import 'package:app/utils/api.dart';
import 'package:app/models/user/user.dart';


class Login extends StatefulWidget {
  @override
  LoginFormState createState() => LoginFormState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class LoginFormState extends State<Login> {
  final _loginFormKey = GlobalKey<FormState>();
  SharedPreferences prefs;
  _LoginData _credentials = _LoginData();

  ProgressHUD progressIndicator = ProgressHUD(
      backgroundColor: Colors.black12,
      color: Colors.white,
      containerColor: Colors.blue,
      borderRadius: 5.0,
      text: 'Logging in... ',);

  @override
  void initState() {
    checkPrefs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Form(
        key: _loginFormKey,
        autovalidate: true,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'me@mail.com', labelText: 'E-mail Address'),
              validator: this._validateEmail,
              onSaved: (String email) {
                this._credentials.email = email;
              },
            ),
            TextFormField(
              obscureText: true,
              decoration:
                  InputDecoration(hintText: 'password', labelText: 'Password'),
              validator: this._validatePassword,
              onSaved: (String password) {
                this._credentials.password = password;
              },
            ),
            Container(
                width: screenSize.width,
                child: RaisedButton(
                  onPressed: this._login,
                  color: Colors.blue,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            Divider(),
            Container(
                width: screenSize.width,
                child: RaisedButton(
                  onPressed: this._register,
                  color: Colors.blue,
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ]),
        ));
  }

  void _login() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return progressIndicator;
        });

    if (_loginFormKey.currentState.validate()) {
      _loginFormKey.currentState.save();
      FocusScope.of(context).requestFocus(FocusNode());

      AppAPI api = AppAPI();
      api.login(_credentials.email, _credentials.password).then((loggedInUser) {
        if (loggedInUser is User) {
          saveUserData(loggedInUser);
          Navigator.pushNamed(context, '/navigation');
        } else {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: const Text(
                'Unable to log you in. Please recheck your credentials.'),
          ));
          return null;
        }
      });
    }
  }

  void _register() {
    Navigator.pushNamed(context, '/register');
  }

  saveUserData(loggedInUser) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('access_token', loggedInUser.access_token);
    prefs.setString('name', loggedInUser.name);
    prefs.setString('email', loggedInUser.email);
  }

  String _validateEmail(String value) {
    try {
      Validate.isEmail(value);
    } catch (e) {
      return 'Please input a valid email';
    }
    return null;
  }

  String _validatePassword(String value) {
    if (value.length < 4) {
      return 'The pin must be at least 4 digits';
    }
    return null;
  }

  checkPrefs() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.getString('access_token') != null) {
      Navigator.pushNamed(context, '/navigation');
    }
  }
}
