import 'package:app_purrer/Screen_page/adtocarts.dart';
import 'package:app_purrer/Screen_page/details_screen.dart';
import 'package:app_purrer/Screen_page/mapapi.dart';
import 'package:app_purrer/Screen_page/order_product.dart';
import 'package:app_purrer/Screen_page/statust_order.dart';
import 'package:app_purrer/Service/controller.dart';
import 'package:app_purrer/logIn_page/logIn.dart';
import 'package:app_purrer/logIn_page/profile.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home_scree extends StatefulWidget {
  home_scree({Key? key}) : super(key: key);

  @override
  State<home_scree> createState() => _home_screeState();
}

class _home_screeState extends State<home_scree> {
  //final Controller controller1 = Get.find();
  final Controllerorder = Get.put(Controller());
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return new Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        drawer: new Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              arrowColor: Colors.white,
              accountName: Text(
                'Kettakoun',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF293275)),
              ),
              accountEmail: Text(
                '020 56555550',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              currentAccountPicture: CircleAvatar(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.asset(
                        'images/photo.jpg',
                        width: 86,
                        height: 86,
                      ))),
            ),
            ListTile(
              leading: Icon(Icons.history),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => order_product(
 )));
              },
              title: Text('ປະຫວັດການສັງຊື້',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Icons.person),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile())),
              title: Text('ໂປຣໄຟຣ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            ListTile(onTap: (){
               Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MapSample()));
            },
                leading: Icon(Icons.location_disabled),
                title: Text('ທີ່ຢູ່ຈັດສົ່ງ',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('ວິທີການຈ່າຍເງີນ',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('ການຕັ້ງຄ່າ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 280),
            ListTile(
              leading: Icon(Icons.logout),
              onTap: () {
                MaterialPageRoute materialPageRoute = MaterialPageRoute(
                    builder: (BuildContext context) => login());
                Navigator.of(context).push(materialPageRoute);
              },
              title: Text('ອອກລະບົບ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ],
        )),
        appBar: new AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: new IconButton(
            icon: new Image.asset('icon/munudrower.png', width: 32, height: 32),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
          title: Center(
            child: Image.asset(
              'images/PURRER.png',
              width: 200,
              height: 40,
            ),
          ),
          actions: [
            Row(
              children: [
                Stack(children: [
                  IconButton(
                      onPressed: () {
                        MaterialPageRoute materialPageRoute = MaterialPageRoute(
                            builder: (BuildContext context) => cartimport());
                        Navigator.of(context).push(materialPageRoute);
                      },
                      icon: Image.asset(
                        'icon/iconcard.png',
                      )),
                  Positioned(
                      left: 23,
                      top: 10,
                      child: Container(
                        alignment: Alignment.center,
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        //  child: Text(
                        //     controller1.product.product.length.toString(),
                        //     style: TextStyle(color: Colors.white),
                        //   ),
                      )),
                ]),
                Stack(children: [
                  IconButton(
                      onPressed: () {
                        MaterialPageRoute materialPageRoute = MaterialPageRoute(
                            builder: (BuildContext context) => orderstatus());
                        Navigator.of(context).push(materialPageRoute);
                      },
                      icon: Icon(Icons.heart_broken, color: Color(0xFF5D5D5D))),
                  Positioned(
                      left: 23,
                      top: 10,
                      child: Container(
                        alignment: Alignment.center,
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),

//         ມີບັນຫາ+++++++++++++++++++++++++++++++++++++++++++
                        // child: Text(
                        //   controller1.product.length.toString(),
                        //   style: TextStyle(color: Colors.white),
                        // ),
                      ))
                ]),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: screen,
                child: Column(
                  children: [
                    CarouselSlider(
                        items: [
                          Container(
                            width: screen,
                            height: screenh * 0.35,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: ExactAssetImage('images/BANNER01.png'),
                                  fit: BoxFit.values[0]),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            print(MediaQuery.of(context).size.width);
                          },
                          height: screenh * 0.20,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        )),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(2, 5, 220, 0),
                  child: GestureDetector(
                    child: Text(
                      'ສີນຄ້າຂອງພວກເຮົາ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5D5D5D)),
                    ),
                    onTap: (){},
                  )),
              productlist(context)
            ],
          ),
        ));
  }
}

Widget productlist(BuildContext context) {
  final controller = Get.put(Controller());
  final controllerbuy = Get.put(Controller());

  var index;
  double screenw = MediaQuery.of(context).size.width;
  double screenh = MediaQuery.of(context).size.height;
  return Row(children: [
    SingleChildScrollView(
        child: Center(
      child: Container(
        padding: EdgeInsets.only(top: 10),
        width: screenw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromARGB(135, 248, 249, 249)),
        child: Obx(
          () {
            if (controller.isLoading.value) {
              return Center(
                child: CircularProgressIndicator());
            } else {
              return Center(
                child: Wrap(
                  spacing: 15,
                  runSpacing: 20,
                  children: List.generate(
                    controller.productList.length,
                    (index) => Container(
                      width: screenw * 0.45,
                      height: screenh * 0.32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFE5EFF9)),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(2)),
                          Container(
                            width: screenw,
                            height: 163,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFE5EFF9),
                            ),
                            child: TextButton(
                              child: Image.network(
                                controller.productList[index].image.toString(),
                                fit: BoxFit.fill,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail_screen(
                                              index: index,
                                              image: controller
                                                  .productList[index].image
                                                  .toString(),
                                              name: controller
                                                  .productList[index].name
                                                  .toString(),
                                              price: controller
                                                  .productList[index].price!
                                                  .toInt(),
                                              description: controller
                                                  .productList[index]
                                                  .description
                                                  .toString(),
                                            )));
                              },
                            ),
                          ),
                          // Padding(padding: EdgeInsets.only(bottom: 2)),
                          SizedBox(height: 10.0),
                          Text(
                            controller.productList[index].name.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                                fontSize: 11),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 10),
                              Text(
                                '${controller.productList[index].price}ກີບ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF293275),
                                    fontSize: 18),
                              ),
                              SizedBox(width: 10.0),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: GestureDetector(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.black,
                                            size: 22,
                                          ),
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (context) => AlertDialog(
                                                          content: Container(
                                                            width: 250,
                                                            height: 100,
                                                            color: Colors.white,
                                                            child: Center(
                                                              child: Column(
                                                                children: [
                                                                  Text(
                                                                      'ແອັດເຂົ້າກະຕ່າສຳເລັດ...',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              15,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color:
                                                                              Color(0xFF293275))),
                                                                  SizedBox(
                                                                      height:
                                                                          20.0),
                                                                  ElevatedButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context);
                                                                        // controller.total.toString()=='state: No element' ? print(0) : print(1);
                                                                        controller.addProduct(controller
                                                                            .productList[int.parse(
                                                                                controller.productList[index].id.toString()) -
                                                                            1]);
                                                                        //  print('======> '+controller.productSubtotal.toString());
                                                                      },
                                                                      child: Text(
                                                                          'OK'))
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ));
                                          }),
                                    )),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    ))
  ]);
}
