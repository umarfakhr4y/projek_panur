import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:html/dom.dart';
import 'package:project_coba/admin/ui/uis.dart';
import 'login.dart';
// import 'package:project_coba/network_utils/api.dart';
import 'package:project_coba/user/ui/home.dart';
import 'package:project_coba/user/viewModels/view_models.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'loginAdmin.dart';

class LoginAdmin extends StatefulWidget {
  @override
  _LoginAdminState createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _isLoading = false;
  String msg;

  final _formKey = GlobalKey<FormState>();
  void login() {
    loginUser(email.text, password.text).then((value) {
      setState(() {
        _isLoading = true;
      });
      setState(() {
        if (value == true) {
          // msg = "Success";
          AlertDialog alertDialog = AlertDialog(
            content: Container(
              height: 100.0,
              child: Column(
                children: [
                  Text("Login Berhasil"),
                  RaisedButton(
                    child: Text("OK"),
                    onPressed: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Admin()),
                      (Route<dynamic> route) => false,
                    ),
                  ),
                ],
              ),
            ),
          );
          showDialog(context: context, child: alertDialog);
        } else {
          AlertDialog alertDialog = AlertDialog(
            content: Container(
              height: 100.0,
              child: Column(
                children: [
                  Text("Login gagal"),
                  RaisedButton(
                    child: Text("OK"),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ),
            ),
          );
          showDialog(context: context, child: alertDialog);
        }
      });
    });
    setState(() {
      _isLoading = false;
    });
  }

  var emailvalid;
  var passwordvalid;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  _showMsg(msg) {
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        color: Colors.teal,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login Admin",
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Kanit',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                      elevation: 4.0,
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextFormField(
                                controller: email,
                                style: TextStyle(color: Color(0xFF000000)),
                                cursorColor: Color(0xFF9b9b9b),
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF9b9b9b),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                                validator: (emailValue) {
                                  if (emailValue.isEmpty) {
                                    return 'Please enter email';
                                  }
                                  emailvalid = emailValue;
                                  return null;
                                },
                              ),
                              TextFormField(
                                controller: password,
                                style: TextStyle(color: Color(0xFF000000)),
                                cursorColor: Color(0xFF9b9b9b),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.vpn_key,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF9b9b9b),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                                validator: (passwordValue) {
                                  if (passwordValue.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  passwordvalid = passwordValue;
                                  return null;
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FlatButton(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 8, bottom: 8, left: 10, right: 10),
                                    child: Text(
                                      _isLoading ? 'Proccessing...' : 'Login',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  color: Colors.teal,
                                  disabledColor: Colors.grey,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0)),
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      login();
                                      print('login dipencet');
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => Login()));
                        },
                        child: Text(
                          'Login As Karyawan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // void _login() async {
  //   setState(() {
  //     _isLoading = true;
  //   });
  //   var data = {'email': email, 'password': password};

  //   var res = await Network().authData(data, '/login');
  //   var body = json.decode(res.body);

  //   if (body['success']) {
  // SharedPreferences localStorage = await SharedPreferences.getInstance();
  // localStorage.setString('token', json.encode(body['token']));
  // localStorage.setString('user', json.encode(body['user']));
  //     Navigator.push(
  //       context,
  //       new MaterialPageRoute(builder: (context) => Home()),
  //     );
  //   } else {
  //     _showMsg(body['message']);
  //   }

  //   setState(() {
  //     _isLoading = false;
  //   });
  // }
}
