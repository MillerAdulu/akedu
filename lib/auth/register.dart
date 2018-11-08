import 'package:flutter/material.dart';
import 'package:validate/validate.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:progress_hud/progress_hud.dart';

import 'package:app/utils/api.dart';
import 'package:app/models/user/user.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: RegisterForm(),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  RegisterFormState createState() => RegisterFormState();
}

class _RegisterData {
  String name = '';
  String email = '';
  String password = '';
  String confirmPass = '';
}

class RegisterFormState extends State<RegisterForm> {
  final _registerFormKey = GlobalKey<FormState>();
  SharedPreferences prefs;

  _RegisterData _credentials = new _RegisterData();

  ProgressHUD progressIndicator = ProgressHUD(
      backgroundColor: Colors.black12,
      color: Colors.white,
      containerColor: Colors.blue,
      borderRadius: 5.0,
      text: 'Registering... ',);

@override
  void initState() {
    checkPrefs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Form(
        key: _registerFormKey,
        autovalidate: true,
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: ListView(children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.text,
                decoration:
                    InputDecoration(hintText: 'John Doe', labelText: 'Name'),
                validator: this._validateName,
                onSaved: (String name) {
                  this._credentials.name = name;
                },
              ),
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
                decoration: InputDecoration(
                    hintText: 'password', labelText: 'Password'),
                validator: this._validatePassword,
                onSaved: (String password) {
                  this._credentials.password = password;
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'password', labelText: 'Confirm Password'),
                validator: this._validatePassword,
                onSaved: (String password) {
                  this._credentials.confirmPass = password;
                },
              ),
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
            ])));
  }

  void _register() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return progressIndicator;
        });

    if (_registerFormKey.currentState.validate()) {
      _registerFormKey.currentState.save();
      FocusScope.of(context).requestFocus(FocusNode());

      if (_credentials.password != _credentials.confirmPass) {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Ensure the passwords match'),
        ));
        return null;
      }

      AppAPI api = AppAPI();
      api
          .signup(_credentials.name, _credentials.email, _credentials.password, _credentials.confirmPass)
          .then((loggedInUser) {
        if (loggedInUser is User) {
          saveUserData(loggedInUser);
          Navigator.pushNamed(context, '/navigation');
        } else {
          Scaffold.of(context).showSnackBar(SnackBar(
            content:
                const Text('Unable to register you. Please try again later.'),
          ));
          return null;
        }
      });
    }
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

  String _validateName(String value) {
    if (value.length < 3) {
      return 'The name must be at least 3 characters';
    }
    return null;
  }

  String _validatePassword(String value) {
    if (value.length < 6) {
      return 'The password must be at least 6 characters';
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
