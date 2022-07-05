import 'package:app_purrer/Product/product_api.dart';
import 'package:app_purrer/Screen_page/homeScreen.dart';
import 'package:app_purrer/Service/controller_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class order_product extends StatefulWidget {
  order_product({
    Key? key,
  }) : super(key: key);
  @override
  State<order_product> createState() => _order_productState();
}

class _order_productState extends State<order_product> {
  Controllerorder controllerorder = Get.put(Controllerorder());
  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Container(
      //     height: 60.0,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(10),
      //       color: Color(0xFF293275),
      //     ),
      //     child: TextButton(
      //       onPressed: () {
      //         // Get.to(home_scree());
      //        // controllerorder.product.clear();
      //         Navigator.push(
      //             context, MaterialPageRoute(builder: (_) => home_scree()));
      //       },
      //       child: Text('Continuese',
      //           style: TextStyle(
      //               fontSize: 16,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.white)),
      //     ),
      //   ),
      // ),
      appBar: AppBar(

        leading: IconButton(
            onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (_) => home_scree()));
            },
            icon: Icon(Icons.arrow_back,color: Color(0xFF293275),)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'Order_product',
          style: TextStyle(color: Color(0xFF293275)),
        )),
      
        actions: [
          IconButton(onPressed: (){
              controllerorder.product.clear();
          },
           icon: Icon(Icons.delete,color: Color(0xFF293275),size: 28))
          
          
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenh,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Obx(
                  () => Column(
                    children: [
                      SizedBox(
                        height: 640.0,
                        child: ListView.builder(
                            itemCount: controllerorder.product.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                color: Colors.white,
                                child: View_Cart(
                                  controllerorder: controllerorder,
                                  products: controllerorder.product.keys
                                      .toList()[index],
                                  quantity: controllerorder.product.values
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
        ),
      ),
    );
  }
}

class View_Cart extends StatelessWidget {
  final Controllerorder controllerorder;
  final Products products;
  final int quantity;
  final int index;
  const View_Cart({
    Key? key,
    required this.controllerorder,
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
                                      SizedBox(width: 20),
                                      Text(
                                          'ຈຳນວນ    ${controllerorder.product.values.toList()[index].toString()} ລາຍການ',
                                          style: TextStyle(
                                              color: Color(0xFF293275),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ])
                              ])
                        ]))
              ])
            ])));
  }
}
