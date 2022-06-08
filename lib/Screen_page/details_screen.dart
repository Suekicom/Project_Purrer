import 'package:app_purrer/Screen_page/adtocarts.dart';
import 'package:app_purrer/Screen_page/confrim_order.dart';
import 'package:app_purrer/Service/controller.dart';
import 'package:app_purrer/Service/controller_buynow.dart';
import 'package:app_purrer/Service/controller_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detail_screen extends StatefulWidget {
  final String image;
  final String name;
  final String description;
  final int price;
  final int index;

  Detail_screen({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.index,
    required this.description,
  }) : super(key: key);

  @override
  State<Detail_screen> createState() => _Detail_screenState();
}

class _Detail_screenState extends State<Detail_screen> {
  final controller = Get.put(Controller());

  final controller1 = Get.put(Controller());

  Controllerbuynow controllerbuynow = Get.put(Controllerbuynow());
  Controllerorder controllerorder = Get.put(Controllerorder());

  Color color1 = Colors.grey;
  Color color2 = Color(0xFF293275);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(color: Color(0xFF293275)),
          backgroundColor: Colors.white,
          title: Center(
            child: Image.asset(
              'images/PURRER.png',
              width: 200,
              height: 40,
            ),
          ),
          actions: [
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
                    child: Text(
                      controller1.product.length.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ]),
          ],
        ),
        backgroundColor: Colors.white,
        body: new Center(
            child: SingleChildScrollView(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SingleChildScrollView(
                            child: Container(
                              height: 393,
                              width: 344,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFFE5EFF9)),
                              child: Column(
                                children: [
                                  Container(
                                      margin: EdgeInsets.all(15),
                                      width: 200,
                                      height: 350,
                                      child: Image.network(
                                        widget.image,
                                        fit: BoxFit.fill,
                                      )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Text(
                                widget.name,
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${widget.price}ກີບ',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF293275))),
                                Padding(padding: EdgeInsets.only(left: 80)),
                                Row(
                                  children: [
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xFFE5EFF9),
                                      ),
                                      child: IconButton(
                                          onPressed: () {
                                            if (controllerbuynow
                                                    .product.values ==
                                                '1') {
                                            } else {
                                              controllerbuynow.removeProduct(
                                                  controller.productList[
                                                      widget.index]);
                                            }
                                          },
                                          icon: Icon(
                                            Icons.remove,
                                            size: 16,
                                            color: Color(0xFF293275),
                                          )),
                                    ),
                                    SizedBox(width: 20),
                                    GetBuilder<Controllerbuynow>(
                                        init: Controllerbuynow(),
                                        builder: (value) => Obx(() => Text(
                                            controllerbuynow.product.values
                                                        .toList()
                                                        .toString() ==
                                                    '[]'
                                                ? '0'
                                                : controllerbuynow
                                                    .product.values
                                                    .toList()[0]
                                                    .toString(),
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF5D5D5D))))),
                                    SizedBox(width: 20),
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xFF293275),
                                      ),
                                      child: IconButton(
                                          onPressed: () {
                                            controllerbuynow.addProduct(
                                                controller
                                                    .productList[widget.index]);
                                            controllerorder.addProduct(
                                              controllerbuynow.product.keys
                                                  .toList()[0],
                                            );
                                          },
                                          icon: Icon(
                                            Icons.add,
                                            size: 16,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ],
                                ),
                                // controllerbuynow.product.length != 0
                                //     ? Obx((() =>
                                //         controllerbuynow.product.length != 0
                                //             ? Text(controllerbuynow
                                //                 .product.values
                                //                 .toList()[index]
                                //                 .toString())
                                //             : controller.product.length != 0
                                //                 ? Text(controller.product.values
                                //                     .toList()[index]
                                //                     .toString())
                                //                 : Text('0')))
                                //  : Text('0'),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Text(
                                "ລາຍລະອຽດ",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF293275)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              widget.description.toString(),
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 150,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFFE5EFF9)),
                                  child: Center(
                                      child: GestureDetector(
                                    child: Text('ເພີ່ມເຂົ້າກະ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF293275))),
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                                content: Container(
                                                  width: 250,
                                                  height: 100,
                                                  color: Color.fromARGB(
                                                      94, 255, 255, 255),
                                                  child: Center(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                            'ເພີ່ມເຂົ້າກະຕ່າແລ້ວ...!'),
                                                        ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                              //   controller.addProduct(controller.productList[index]);
                                                              controller.addProduct(controller
                                                                  .productList[int.parse(controller
                                                                      .productList[
                                                                          widget
                                                                              .index]
                                                                      .id
                                                                      .toString()) -
                                                                  1]);
                                                            },
                                                            child:
                                                                Text('ຕົກລົງ')),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ));
                                    },
                                  )),
                                ),
                                Container(
                                    width: 150,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: color2),
                                    child: Center(
                                        child: GestureDetector(
                                            child: TextButton(
                                      onPressed: () {
                                        controllerbuynow.product.values
                                                    .toList()
                                                    .toString() ==
                                                '[]'
                                            ? ''
                                            : Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        confirm_order()));
                                      },
                                      child: Text('ສັ່ງຊື້',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    ))))
                              ])
                        ]))
              ]),
        )));
  }
}
