import 'package:app_purrer/Screen_page/homeScreen.dart';
import 'package:app_purrer/logIn_page/Register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyLogin(),
    );
  }
}

class bodyLogin extends StatefulWidget {
  @override
  State<bodyLogin> createState() => _bodyLoginState();
}

class _bodyLoginState extends State<bodyLogin> {
  bool _isObscure = true;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 400)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 350,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFE5EFF9)),
                          padding: EdgeInsets.only(left: 20, top: 5),
                          child: TextField(
                              onChanged: (value) => email = value.trim(),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: Colors.grey))))
                    ]),
                Padding(padding: EdgeInsets.only(top: 30)),
                Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFE5EFF9),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 5),
                  child: TextField(
                    onChanged: (Value) => password = Value.trim(),
                    keyboardType: TextInputType.text,
                    obscureText: _isObscure,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r"\s\b\s"))
                    ],
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                         hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off))),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF293275)
                    ),
                    width: 350,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        // if((email.isEmpty)||((password.isEmpty))){
                        //   print('have Spece');
                        // }
                        MaterialPageRoute materialPageRoute = MaterialPageRoute(
                            builder: (BuildContext context) => home_scree());
                        Navigator.of(context).push(materialPageRoute);
                      },
                      child: Text(
                        'login',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )),
                Padding(padding: EdgeInsets.only(top: 20)),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.only(left: 5),
                            child: Image.asset(
                              'images/lin.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.only(left: 5),
                            child: Image.asset(
                              'images/what.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.only(left: 5),
                            child: Image.asset(
                              'images/facebook.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.only(left: 5),
                            child: Image.asset(
                              'images/twitter.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.only(left: 5),
                            child: Image.asset(
                              'images/google.png',
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Done have on account ",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          TextButton(
                              onPressed: () {
                                MaterialPageRoute materialPageRoute =
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            register());
                                Navigator.of(context).push(materialPageRoute);
                              },
                              child: Text(
                                " Register...",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget get images {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    child: Container(
      child: Center(
          // child: Image.asset(
          //   'images/imnum.jpeg',
          //   width: 200,
          //   height: 200,
          // ),
          ),
    ),
  );
}
