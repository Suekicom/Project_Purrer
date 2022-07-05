import 'package:app_purrer/Screen_page/homeScreen.dart';
import 'package:app_purrer/Screen_page/mapapi.dart';
import 'package:app_purrer/Screen_page/order_product.dart';
import 'package:app_purrer/logIn_page/logIn.dart';
import 'package:flutter/material.dart';
class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screen;
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                MaterialPageRoute materialPageRoute = MaterialPageRoute(
                    builder: (BuildContext context) => home_scree());
                Navigator.of(context).push(materialPageRoute);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xFF293275),
              )),
          title: Center(
              child: Text(
            'My Profile',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xFF293275)),
          )),
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                            width: screen,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            margin: EdgeInsets.only(bottom: 100),
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 80),
                                    height: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 35)),
                                        ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(35),
                                            child: Image.asset(
                                              'images/photo.jpg',
                                              width: 100,
                                              height: 100,
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(left: 30)),
                                        Column(
                                          children: [
                                            Text("Kettakoun",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 23,
                                                    color: Color(0xFF293275))),
                                            SizedBox(height: 20),
                                            Text("+85620 55501551 ",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.edit,
                                                  color: Color(0xFF293275),
                                                  size: 12),
                                                label: Text(
                                                  'ແກ້ໄຂ',
                                                  style: TextStyle(
                                                      color: Color(0xFF293275),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ],
                                        )
                                      ],
                                    ))
                              ],
                            )),
                      ],
                    ),
                    Positioned(
                        top: 130,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            width: screen,
                            height: 150,
                            padding:
                                EdgeInsets.only(left: 10, right: 15, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        width: 50,
                                        child: GestureDetector(
                                          child: Image.asset('icon/R (1).jpg'),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) =>
                                                       order_product()));
                                          },
                                        )),
                                    SizedBox(height: 30),
                                    Text('ປະຫວັດຜ່ານມາ',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF293275)))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        width: 50,
                                        child: GestureDetector(
                                          child: Image.asset(
                                              'icon/campaign-48-694789.png'),
                                          onTap: () {},
                                        )),
                                    SizedBox(height: 30),
                                    Text('ໂປຣໂມຊັນ',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF293275)))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                        width: 50,
                                        child: TextButton(
                                            child:
                                                Image.asset('icon/OIP (6).jpg',height: 50,width: 70,),
                                            
                                             onPressed: () => Navigator.push(context, MaterialPageRoute(builder:(context) =>  MapSample())),
                                            )),
                                    SizedBox(height: 30),
                                    Text('ທີ່ຢູ່ຈັດສົ່ງ',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF293275)))
                                  ],
                                )
                              ],
                            ))),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 100),
                    padding: EdgeInsets.all(10),
                    width: screen,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.payment,
                                size: 35, color: Color(0xFF293275)),
                            SizedBox(width: 20),
                            Text(
                              'ຂໍ້ມູນການຊຳລະ',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF293275)),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Icon(Icons.person,
                                size: 35, color: Color(0xFF293275),
                                
                                ),
                            SizedBox(width: 20),
                            Text('ກ່ຽວກັບ Purer',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF293275))),
                                   

                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Icon(Icons.query_stats,
                                size: 35, color: Color(0xFF293275)),
                            SizedBox(width: 20),
                            Text('ເງືອນໄຂແລະຂໍ້ກຳນົດ',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF293275)))
                          ],
                        ),
                        SizedBox(height: 30),
                        ListTile(
                          leading: Icon(Icons.logout,
                              size: 35, color: Color(0xFF293275)),
                          onTap: () {
                            MaterialPageRoute materialPageRoute =
                                MaterialPageRoute(
                                    builder: (BuildContext context) => login());
                            Navigator.of(context).push(materialPageRoute);
                          },
                          title: Text('ອອກລະບົບ',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF293275))),
                        ),
                      ],
                    ))
              ],
            ))
          ],
        )));
  }
}
