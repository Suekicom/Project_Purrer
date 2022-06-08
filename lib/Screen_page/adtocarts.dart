import 'dart:ffi';

import 'package:app_purrer/Product/product_api.dart';
import 'package:app_purrer/Screen_page/confrim_order.dart';
import 'package:app_purrer/Screen_page/homeScreen.dart';
import 'package:app_purrer/Service/controller.dart';
import 'package:app_purrer/Service/controller_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class cartimport extends StatelessWidget {
  final Controller controller = Get.find();
  final Controller controller1 = Get.find();
  Controllerorder controllerorder = Get.put(Controllerorder());

  cartimport({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF293275)),
          backgroundColor: Colors.white38,
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
                  onPressed: () {},
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
        body: controller.productSubtotal.toString() == '[]'
            ? Center(
                child: Container(
                    child: Image.asset('images/Cart_import.jpeg',
                        fit: BoxFit.fill)))
            : ListView(children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('ກະຕ່າ',
                                style: TextStyle(
                                    fontSize: 27.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF293275))),
                            Row(
                              children: [
                                SizedBox(
                                  width: 12.0,
                                ),
                                Text('ທ່ານມີ ',
                                    style: TextStyle(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                                Text(controller1.product.length.toString(),
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 11)),
                                Text('ລາຍການ ',
                                    style: TextStyle(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.edit),
                            label: Text(
                              'ແກ້ໄຂ',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF293275)),
                            )),
                      ],
                    ),
                    SizedBox(width: 20),
                    Container(
                      color: Colors.white,
                      child: Obx(
                        () => Column(
                          children: [
                            SizedBox(
                              height: 640.0,
                              child: ListView.builder(
                                  itemCount: controller.product.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      color: Colors.white,
                                      child: View_Cart(
                                        controller: controller,
                                        products: controller.product.keys
                                            .toList()[index],
                                        quantity: controller.product.values
                                            .toList()[index],
                                        index: index,
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        bottomNavigationBar: controller.productSubtotal.toString() == '[]'
            ? Center(
                child: Image.asset(
                'images/Cart_import.jpeg',
                fit: BoxFit.fill,
              ))
            : Container(
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Column(children: [
                      Row(children: [
                        Padding(padding: EdgeInsets.only(left: 30.0)),
                        Center(
                            child: Text('ລວມມູນຄ່າ: ',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF293275)))),
                        SizedBox(width: 50.0),
                        Obx(() => controller.productSubtotal.toString() == '[]'
                            ? Text('0',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF293275)))
                            : Text('${controller.total} ກີບ',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF293275))))
                      ]),
                      TextButton(
                          onPressed: () {
                            controllerorder.addProduct(
                                controller.product.keys.toList()[0]);
                            MaterialPageRoute materialPageRoute =
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        confirm_order());
                            Navigator.of(context).push(materialPageRoute);
                          },
                          child: Container(
                            height: 46.0,
                          
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF293275)),
                            child: Center(
                                child: Text('ສັ່ງຊື້',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white))),
                          ))
                    ]))));
  }
}

class View_Cart extends StatelessWidget {
  final Controller controller;
  final Products products;
  final int quantity;
  final int index;
  const View_Cart({
    Key? key,
    required this.controller,
    required this.products,
    required this.quantity,
    required this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Row(children: [
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                    height: 130,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 2)),
                                Container(
                                    width: 89.0,
                                    height: 89.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xFFE5EFF9)),
                                    child: Image.network(
                                        products.image.toString())),
                                Column(children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 70,
                                          width: 5.0,
                                        ),
                                        Text(products.name.toString(),
                                            style: TextStyle(
                                                color: Color(0xFF5D5D5D),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(width: 5.0),
                                        Text('${products.price}ກິບ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF293275),
                                                fontSize: 18))
                                      ]),
                                  SizedBox(height: 2),
                                  Row(
                                    children: [
                                      Container(
                                        width: 26.0,
                                        height: 26.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color(0xFFE5EFF9)),
                                        child: IconButton(
                                            onPressed: () {
                                              controller.onInit();
                                              controller
                                                  .removeProduct(products);
                                            },
                                            icon: Icon(
                                              Icons.remove,
                                              size: 12,
                                              color: Color(0xFF293275),
                                            )),
                                      ),
                                      SizedBox(width: 20),
                                      Text('${quantity}ຕຸກ',
                                          style: TextStyle(
                                              color: Color(0xFF293275),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(width: 20),
                                      Container(
                                        width: 26.0,
                                        height: 26.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color(0xFF293275),
                                        ),
                                        child: IconButton(
                                            onPressed: () {
                                              controller.addProduct(products);
                                            },
                                            icon: Icon(
                                              Icons.add,
                                              size: 12,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ],
                                  ),
                                ])
                              ])
                        ]))
              ])
            ])));
  }
}
