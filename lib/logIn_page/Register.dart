
import 'package:app_purrer/logIn_page/logIn.dart';
import 'package:flutter/material.dart';

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 300)),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFE5EFF9)),
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email', hintStyle: TextStyle(color: Colors.grey),
                        icon: Icon(
                          Icons.email,
                          size: 40,
                          color: Colors.grey,
                        )),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                     color: Color(0xFFE5EFF9),),
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password', hintStyle: TextStyle(color: Colors.grey),
                        icon: Icon(
                          Icons.lock,
                          size: 40,
                          color: Colors.grey,
                        )),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                     color: Color(0xFFE5EFF9),),
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Telephone ..!', hintStyle: TextStyle(color: Colors.grey),
                        icon: Icon(
                          Icons.call,
                          size: 40,
                          color: Colors.grey,
                        )),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                       color: Color(0xFF293275),
                    ),
                    width: 350,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        MaterialPageRoute materialPageRoute = MaterialPageRoute(
                            builder: (BuildContext context) => login());
                        Navigator.of(context).push(materialPageRoute);
                      },
                      child: Text(
                        'Contineus',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )),
                Padding(padding: EdgeInsets.only(top: 20)),
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
                                  builder: (BuildContext context) => login());
                          Navigator.of(context).push(materialPageRoute);
                        },
                        child: Text(
                          " Login ...",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),
                        ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget get images {
  return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Container(
          // height: 789,
          // width: 392,
          // child: Image.asset(
          //   'images/imnum.jpeg',
          //   width: 200,
          //   height: 200,
          // ),
          ));
}
